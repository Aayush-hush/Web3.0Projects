// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract FundMe{

    uint256 public minimumUSD = 50;

    function fund() public payable{
        require(msg.value >= minimumUSD, "Did'nt Send Enough !");
    }

    function GetPrice() public{
        //ABI
        //Address which can we obtained by chain lik adrress 
        
        
    }
}