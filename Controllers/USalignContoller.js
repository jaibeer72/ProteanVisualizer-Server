const { exec } = require('child_process');
const fs = require('fs');
const path = require('path');
const axios = require('axios');

module.exports.compareTwoProteans = async (req, res) => {
  try{
  const { protean1, protean2 } = req.query;
  
      // Fetch files from URLs using axios
      const response1 = await axios.get(protean1);
      const response2 = await axios.get(protean2);
  
      // Save the fetched files locally
    const file1Path = path.join(__dirname, 'protean1.pdb');
    const file2Path = path.join(__dirname, 'protean2.pdb');
  
    fs.writeFileSync(file1Path, response1.data);
    fs.writeFileSync(file2Path, response2.data);

  // Create a unique folder to store the superimposed structure
  const outputFolder = path.join(__dirname, 'superimposed');
  fs.mkdirSync(outputFolder, { recursive: true });
  
  const usalignBinary = path.join(__dirname, '../../US-Align/USalign/USalign');
  // Execute the USalign binary commandad
  const command = `${usalignBinary} ${file1Path} ${file2Path} -o ${path.join(outputFolder, 'superimposed')}`;
  exec(command, (error, stdout, stderr) => {
    if (error) {
      console.error(`Error executing USalign: ${error.message}`);
      res.status(500).json({ error: 'Superimposition failed' });
    } else {
      console.log('Superimposed structure saved');

      // Read the superimposed structure file
      const superimposedPDBPath = path.join(outputFolder, 'superimposed.pdb');
      const superimposedPDB = fs.readFileSync(superimposedPDBPath, 'utf8');

      // Delete the superimposed structure file
      fs.rmdirSync(outputFolder, { recursive: true });
      fs.unlinkSync(file1Path);
      fs.unlinkSync(file2Path);

      // Send the superimposed structure back to the client
      res.status(200).send(superimposedPDB);
    }
  });
} catch (error) {

  console.error(`Error executing USalign: ${error.message}`);
}
};

module.exports.sayHello = async (req, res) => {
    res.status(200).send("Hello world! test");
};