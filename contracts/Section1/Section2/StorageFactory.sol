// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {SimpleStorage,SimpleStorage2} from "./SimpleStorage.sol";


contract MyContract 
{

    SimpleStorage[] public listOfSimpleStorageContract;

    function CreateContract() public 
    {
        SimpleStorage newlistOfSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContract.push(newlistOfSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSipmleStorageNumber) public 
    {
        // Address
        // ABI (technically a lie, you just need to know the function selector)
        listOfSimpleStorageContract[_simpleStorageIndex].store(_newSipmleStorageNumber);

    }

    function sfRetrieve(uint256 _simpleStorageIndex, uint256 _newSipmleStorageNumber) public 
    {
        // Address
        // ABI (technically a lie, you just need to know the function selector)
        listOfSimpleStorageContract[_simpleStorageIndex].store(_newSipmleStorageNumber);
    }
        
}

//qasdsadsadsasdasadasadsasad