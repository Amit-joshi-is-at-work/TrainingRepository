const express = require('express');
const path = require('path');
const app = express();
const PORT = 4200;

// Serve static assets from the /app directory explicitly
app.use(express.static('/app'));

// Serve the index.html file
app.get('/', (req, res) => {
    // 1. Try serving from the hardcoded absolute container path first
    res.sendFile('/app/index.html', (err) => {
        if (err) {
            console.error("Absolute path failed, trying process.cwd() fallback...");

            // 2. Fallback to Current Working Directory if absolute path fails
            res.sendFile(path.join(process.cwd(), 'index.html'), (fallbackErr) => {
                if (fallbackErr) {
                    console.error("Fallback failed:", fallbackErr);
                    res.status(500).send("Internal Server Error: File not found.");
                }
            });
        }
    });
});

app.listen(PORT, () => {
    console.log(`Frontend server is running successfully at ${PORT}`);
});