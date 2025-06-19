const express = require('express');
const path = require('path');
require('dotenv').config();

const app = express();
const port = process.env.PORT || 3000;

// Serve static files
app.use(express.static('.'));

// API endpoint to get the API key
app.get('/api/config', (req, res) => {
  res.json({
    apiKey: process.env.GOOGLE_AI_API_KEY
  });
});

app.post('/api/config', async (req, res) => {
    try {
        const { contents } = req.body;
        const model = req.query.model;
        
        if (!contents || !model) {
            return res.status(400).json({ error: 'Missing contents or model parameter' });
        }
        
        const response = await fetch(`https://generativelanguage.googleapis.com/v1beta/models/${model}:generateContent?key=${apiKey}`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({
                contents: contents,
                generationConfig: {
                    temperature: 0.7,
                    topK: 40,
                    topP: 0.95,
                    maxOutputTokens: 8192,
                }
            })
        });
        
        if (!response.ok) {
            const errorText = await response.text();
            console.error('Gemini API Error:', errorText);
            return res.status(response.status).json({ 
                error: `Gemini API Error: ${response.status} ${response.statusText}` 
            });
        }
        
        const data = await response.json();
        res.json(data);
        
    } catch (error) {
        console.error('Server error:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
});

// Serve the main app
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'index.html'));
});

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
