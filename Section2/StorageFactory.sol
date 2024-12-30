// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {SimpleStorage,SimpleStorage2} from "./SimpleStorage.sol";


contract MyContract 
{

    SimpleStorage[] public listOfSimpleStorageContract;

    function CreateContract() public 
    {
        SimpleStorage newlistOfSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContract.push(newlistOfSimpleStorageContract);
    }


}

//qasdsadsadsasdasadasadsasad