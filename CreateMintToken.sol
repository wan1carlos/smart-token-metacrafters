// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {
     // Constructor for the token
    constructor() ERC20("WeiWei", "WEI") Ownable(msg.sender) {
        // Deployer is the owner
    }
    // Minting function that is only for the owne
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
    // Any user can burn
    function burn(uint256 amount) public {
        _burn(_msgSender(), amount);
    }
    //Funtion to transfer, also checks if there is sufficient balance
    function transfer(address recipient, uint256 amount) public override returns (bool) {
        require(balanceOf(_msgSender()) >= amount, "Transfer failed: there is insufficient balance");
        return super.transfer(recipient, amount);
    }
}
