require('dotenv').config(); // Load environment variables from .env file

const express = require('express');
const app = express();
const port = 3000;

const name = process.env.NAME || 'Unknown';

app.get('/api/hello', (req, res) => {
  res.send(`Hello ${name}`);
});

app.listen(port, () => {
  // console.log(`Backend server is running on port ${port}`);
});