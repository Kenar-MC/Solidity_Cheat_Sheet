// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {SimpleStorage,SimpleStorage} from "./SimpleStorage.sol";


contract MyContract 
{

    SimpleStorage public simpleStorageContract;

    function CreateContract() public 
    {
        simpleStorageContract = new SimpleStorage();
    }


}

//qasdsadsadsasdasadasadsasad