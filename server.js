const express = require('express');
const cors = require('cors'); // Import the cors package

const app = express();

// Enable CORS for all routes
app.use(cors());

// Serve static files from the "public" folder
app.use(express.static('public'));

// Start the server
app.listen(3003, () => {
  console.log('Server is running on http://localhost:3003');
});
