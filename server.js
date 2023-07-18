const express = require('express');
const cors = require('cors'); // Import the cors package
const usAlignRouts = require('./Routs/USalignRouts'); // Import the USalign routes
const app = express();

// Enable CORS for all routes
app.use(cors());

// Serve static files from the "public" folder
app.use(express.static('public'));
app.use(express.json()); 
app.get('/', (req, res) => {
  res.send('Hello, world!');
});

app.use('/api', usAlignRouts); // Import the USalign routes

// Start the server
app.listen(3003, () => {
  console.log('Server is running on http://localhost:3003');
});

