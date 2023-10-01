//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;//Solidity Version

contract SimpleStorage {
    //Boolean,uint-unassinged,int,address,bytes
    //This gets initialised to zero!!
    uint256 favor;//public makes a funtion getter therefore we can change  
    People[] public people;

    mapping (string => uint256) public nameToFavorNumber;
                                            //virtual so it could be overrided easily
    function store(uint256 _favorr) public virtual{
          favor = _favorr;
    }

    function retrieve() public view returns(uint256){
        return favor;
    }

    struct People {
        uint favor;
        string name;
    }                        // |~>In Solidity, we use the memory keyword to store the data temporarily during the execution of a smart contract.
    function addperson(string memory _name, uint256 _favorr) public{
        People memory newperson = People({favor: _favorr , name: _name});
        nameToFavorNumber[_name]= _favorr;
        people.push(newperson);
    }
    
}
//unless the function is view or pure it is going to use gas whether you are only reading or calling a function 

/*
        BASIC ARRAYS IN SOLIDITY
 struct People {} **we need to store as pure functions
    we are creating a object people which can be used list
    People[] -> is a dynamic array  size not defined even it is empty 
    String is a secret array therefore it needs to be define storage 
        
        SOLIDITY MEMORY, STORAGE & CallData
    EVM can access & store data in six places that are 
    -> Stack
    -> Memory- exist temporarily
    -> Storage- exists outside function
    -> CallData- exists temporarily but vant be modified
    -> Code
    -> Logs

        MAPPING
    A mapping is a data Structure where a key is "mapped" to a single value 
    It could be thought as a Dictionary.
    when doing mapping we reinitialised every value to zero;
     

*/