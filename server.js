const express = require('express');
const path = require('path');
const bodyParser = require('body-parser');

const app = express();
const PORT = process.env.PORT || 3000;

// Middleware
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static(__dirname));

// Serve the main page
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'index.html'));
});

// Handle contact form submissions
app.post('/contact', (req, res) => {
    const { name, email, message } = req.body;
    console.log('Contact Form Submission:', { name, email, message });
    res.send('<h2>Thank you for contacting us!</h2><p>We have received your message and will get back to you soon.</p><a href="/">Back to Home</a>');
});

app.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}`);
}); 