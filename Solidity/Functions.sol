// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract functions{
    uint public age=20;

    function add(uint _x,uint _y) public pure returns (uint){
        return _x + _y;
    }

    function changeAge() public{
        age+=1;
    }

    function getAge() public view returns(uint) {   // another way of making age public (through function)
     return age;
    }

    // we can also make age as public =>: uint public age=20;

    function fun() internal{

    }
}

// fun
 function dummy(uint _x) pure returns(uint){
     return _x*10;
 }
