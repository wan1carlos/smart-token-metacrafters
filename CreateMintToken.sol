// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {
    construct() ERC20("WeiWei", "Wei) Ownable(msg.sender) {
        //Deployer is the owner
}
 // Minting function that is only for the owne
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Any user can burn
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}
