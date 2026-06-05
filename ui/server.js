const express = require('express');
const path = require('path');
const app = express();
const PORT = 4200;

// Read the environment variable (fallback to localhost if not set)
const BACKEND_URL = process.env.BACKEND_URL || 'http://localhost:8087';

app.use(express.static('/app'));

// Endpoint to expose the backend URL to the frontend
app.get('/config', (req, res) => {
    res.json({ backendUrl: BACKEND_URL });
});

app.get('/', (req, res) => {
    res.sendFile('/app/index.html', (err) => {
        if (err) {
            res.sendFile(path.join(process.cwd(), 'index.html'), (fallbackErr) => {
                if (fallbackErr) res.status(500).send("File not found.");
            });
        }
    });
});

app.listen(PORT, () => {
    console.log(`Frontend server is running successfully at ${PORT}`);
});