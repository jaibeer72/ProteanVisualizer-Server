const { exec } = require('child_process');
const fs = require('fs');
const path = require('path');

module.exports.compareTwoProteans = async (req, res) => {
  try{
  const { protean1, protean2 } = req.query;
    console.log("protean1");
  // Create a unique folder to store the superimposed structure
  const outputFolder = path.join(__dirname, 'superimposed');
  fs.mkdirSync(outputFolder, { recursive: true });

  // Execute the USalign binary command
  const command = `../../US-Align/USalign/USalign ${protean1} ${protean2} ${path.join(outputFolder, 'superimposed.pdb')}`;
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
      fs.unlinkSync(superimposedPDBPath);

      // Send the superimposed structure back to the client
      res.status(200).send(superimposedPDB);
    }
  });
} catch (error) {

  console.error(`Error executing USalign: ${error.message}`);
}
};

module.exports.sayHello = async (req, res) => {
    res.status(200).send("Hello");

};