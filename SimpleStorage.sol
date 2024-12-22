// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; // Version


contract SimpleStorage 
{

    bool hasFavoriteNumber = true;  
    uint256  public favoriteNumber; // Set to 0 if not assigned
    int256 favoriteNegativeNumber = -88; 
    string favoriteString = "88"; 
    address favoriteAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; 

        // Visibility : public (can be accessed from outside the contract), private (can only be accessed from within the contract)
        // internal (can only be accessed from within the contract and contracts deriving from it), external (can only be accessed from outside the contract)
    function store(uint256 _favoriteNewNumber) public
    {
        favoriteNumber = _favoriteNewNumber;
    }

}

