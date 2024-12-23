// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; // Version


contract SimpleStorage 
{

    bool hasFavoriteNumber = true;                  // Boolean
    uint256  public favoriteNumber;                 // Set to 0 if not assigned
    int256 favoriteNegativeNumber = -88;            // 256 bit signed integer
    string favoriteString = "88";               
    address favoriteAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;   // Ethereum address

    uint256[] favoriteArray = [1,2,3,4,5];          


    struct Person                                   // You cant change the value of a struct after it is set
    {
        uint256 favoriteNumber;
        string name;    
    }

    Person  public person = Person (88, "John");        // Person struct    
    Person  public person2 = Person ({favoriteNumber: 88, name: "John"});       // Person struct
    Person[] public people = [Person(88, "John"), Person(88, "John")];          // Array of Person struct
    
    Person[] public listOfPeople;                                       // Dynamic array
    Person[2] public listOfPeople2;                                      // Static array


        function addPerson(uint256 _favoriteNumber, string memory _name) public
        {
            listOfPeople.push(Person(_favoriteNumber, _name)); 
        }


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

