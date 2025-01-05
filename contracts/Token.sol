// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // Version


import "@openzeppelin/contracts/token/ERC20/ERC20.sol"; // Importing ERC20

contract BEEToken is ERC20 
{
    constructor() ERC20("BEE Token", "BEE") 
    {
        _mint(msg.sender, 1000000 * 10 ** 18); // Minting 1,000,000 tokens
    }
    {

    }
}