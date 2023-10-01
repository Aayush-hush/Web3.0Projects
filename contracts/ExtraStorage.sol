// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

import "./SimpleStorage.sol";
import "./StorageFactory.sol";

contract ExtraStorage is SimpleStorage {
    //override 
    //virtual override
    function store(uint256 _favorr) public override{
        favor=_favorr+5;
    }//Here we see inheritance and over writing an function 
    
}