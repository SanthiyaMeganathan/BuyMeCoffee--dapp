require("@nomicfoundation/hardhat-toolbox");
require("@nomicfoundation/hardhat-ethers");
require("@nomicfoundation/hardhat-ignition");
require("@nomicfoundation/hardhat-verify");
require("@typechain/hardhat");
require("@nomiclabs/hardhat-waffle");
require("dotenv").config();

// const gasPrice = ethers.utils.parseUnits("2", "gwei"); // Set gas price to 2 gwei

// const { vars } = require("hardhat/config");

const SEPOLIA_URL = process.env.SEPOLIA_URL;
const PRIVATE_KEY = process.env.PRIVATE_KEY.toString();
const SEPOLIA_API_KEY = process.env.SEPOLIA_API_KEY;
// const PRIVATE_KEY = vars.get(PRIVATE_KEY);
console.log(PRIVATE_KEY.toString());
console.log(SEPOLIA_URL);

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.24",
  networks: {
    hardhat: {},
    sepolia: {
      url: `https://eth-sepolia.g.alchemy.com/v2/fcUUXMMV-9rDjSWOJADoVEr5uKDs6fMC`,
      accounts: [PRIVATE_KEY],
      chainId: 11155111,
    },
  },
};
