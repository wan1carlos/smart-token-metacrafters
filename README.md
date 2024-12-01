# WeiWei Token (Wei)

![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)  
![Solidity: ^0.8.0](https://img.shields.io/badge/Solidity-^0.8.0-yellow)

WeiWei Token (`Wei`) is an ERC20-compliant cryptocurrency built on the Ethereum blockchain. It features secure ownership and functionality for minting, burning, and transferring tokens.

---

## Features

- **ERC20 Compliance**: Fully adheres to the ERC20 standard for tokens.
- **Minting**: Tokens can be minted exclusively by the contract owner.
- **Burning**: Holders can burn their tokens to reduce the total supply.
- **Ownership**: Managed with OpenZeppelin’s `Ownable` contract for secure administration.

---

## Token Details

- **Token Name**: WeiWei  
- **Symbol**: Wei  
- **Decimals**: 18 (default for ERC20 tokens)  

---

## Functionality

1. **Minting**:  
   Only the contract owner has the authority to mint new tokens and assign them to any address.  

2. **Transferring**:  
   Any user holding tokens can transfer them to other addresses freely.  

3. **Burning**:  
   Any user can burn their tokens, reducing the total token supply.

---

## License

This project is licensed under the MIT License.  
See the `LICENSE` file for more details.
