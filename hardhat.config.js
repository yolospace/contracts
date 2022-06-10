require("@nomiclabs/hardhat-waffle");

// This is a sample Hardhat task. To learn how to create your own go to
// https://hardhat.org/guides/create-task.html
task("accounts", "Prints the list of accounts", async (taskArgs, hre) => {
  const accounts = await hre.ethers.getSigners();

  for (const account of accounts) {
    console.log(account.address);
  }
});

// You need to export an object to set up your config
// Go to https://hardhat.org/config/ to learn more

/**
 * @type import('hardhat/config').HardhatUserConfig
 */
module.exports = {
  solidity: "0.8.4",
  defaultNetwork: "ganache",
  networks: {
    ganache: {
      url: "HTTP://127.0.0.1:7545",
      accounts: [
        "1ed85f62ab557b5ce3f9d3c2eef24246717c7e5631aee009bb36408bd6cc27d8",
        "f5d32e7ff7af07ee0157536f149a139bb44433c1c8a5369c14747ed81f642d9d"
      ]
  }
}};
