# MyToken Project

A simple Ethereum smart contract for creating a custom token.

## Description

MyToken is a basic Ethereum smart contract written in Solidity. This contract allows for the creation of a custom token with a specific name and abbreviation. The contract includes functionality for minting new tokens, burning existing tokens, and tracking the balances of token holders. It is designed to be a straightforward example for learning purposes, demonstrating the essential features of token management on the Ethereum blockchain.

## Getting Started

## Running MyToken Contract in Remix

To run the MyToken contract using Remix, an online Solidity IDE, follow these steps:

### Installing

1. **Open Remix**: Navigate to the [Remix IDE](https://remix.ethereum.org/) in your web browser.

2. **Create a New File**:
   - In the left panel, click on the "+" icon to create a new file.
   - Name the file `MyToken.sol`.

3. **Copy the Contract Code**:
   - Copy the following Solidity code into `MyToken.sol`:
     ```solidity
     // SPDX-License-Identifier: MIT
     pragma solidity ^0.8.25;

     contract MyToken {
         // public variables here
         string public tokenName = "Warp";
         string public tokenAbbrv = "WRP";
         uint public totalSupply = 0;

         // mapping variable here
         mapping(address => uint) public balances;

         // mint function
         function mint(address _address, uint _value) public {
             balances[_address] += _value;
             totalSupply += _value;
         }

         // burn function
         function burn(address _address, uint _value) public {
             if(balances[_address] >= _value){
                 balances[_address] -= _value;
                 totalSupply -= _value;
             }
         }
     }
     ```

### Executing program

1. **Compile the Contract**:
   - Click on the "Solidity Compiler" tab on the left sidebar.
   - Ensure the compiler version is set to `0.8.25` (or compatible).
   - Click the "Compile MyToken.sol" button.

2. **Deploy the Contract**:
   - Go to the "Deploy & Run Transactions" tab on the left sidebar.
   - Ensure "Environment" is set to "JavaScript VM (London)" for a local blockchain environment.
   - Click the "Deploy" button next to the `MyToken` contract.

3. **Interact with the Contract**:
   - After deployment, the contract instance will appear in the "Deployed Contracts" section.
   - You can interact with the contract using the available functions:

     **Mint Tokens**:
     - In the `mint` function input fields, enter an address and a value (e.g., `0x123...` and `1000`).
     - Click the "transact" button to mint the tokens.

     **Burn Tokens**:
     - In the `burn` function input fields, enter an address and a value (e.g., `0x123...` and `500`).
     - Click the "transact" button to burn the tokens.

     **Check Balance**:
     - In the `balances` function input field, enter an address (e.g., `0x123...`).
     - Click the "call" button to check the balance of the address.

## Help

If you encounter common issues or problems, here are some troubleshooting tips:

1. **Compilation Errors**: Ensure that your Solidity version is compatible with the specified pragma version in the contract.
   ```
   pragma solidity ^0.8.25;
   ```

2. **Deployment Issues**: Make sure you have selected the correct environment in the "Deploy & Run Transactions" tab.

3. **Balance Issues**: Verify that the address you are interacting with has sufficient tokens for burning.

For additional help, you can refer to the Remix documentation or seek assistance on Ethereum development forums.
