const express = require('express');
const path = require('path');
const app = express();
const PORT = 4200;

// Serve the index.html file when someone visits http://localhost:4200
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'index.html'));
});

app.listen(PORT, () => {
    console.log(`Frontend server is running successfully at http://localhost:${PORT}`);
});