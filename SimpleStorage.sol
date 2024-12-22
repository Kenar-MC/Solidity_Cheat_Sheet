// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; // Version


contract SimpleStorage 
{

    bool hasFavoriteNumber = true;  
    uint256  public favoriteNumber; // Set to 0 if not assigned
    int256 favoriteNegativeNumber = -88; 
    string favoriteString = "88"; 
    address favoriteAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; 

        // Visibility : public, private, internal, external

    function store(uint256 _favoriteNewNumber) public  /// Public means it can be accessed from outside the contract and it changes the state of the contract
    {
        favoriteNumber = _favoriteNewNumber;
    }
        
    function retrieve () public view returns (uint256) /// View means it doesn't change the state of the contract
    {
        return favoriteNumber;  
    }

    function nothing () public pure returns (string memory) /// Pure means it doesn't read or write to the state of the contract
    {
        return "Hello World";
    }

}

