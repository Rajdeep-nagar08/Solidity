// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract localvariab{
    /*
    Values of these variables are permanently stored in the contract storage. Each
     function has its own scope, and state variables 
     should always be defined outside of that scope.


     these store space in block, so they costs gas

     */

     uint public salary=60000;  // direct initialization

     // OR we can also initialize state variable using constructer

     constructor(){
         salary=34444;
     }

     //Or we can also initialize using function

     function setsalary() public{
         salary=900000;
     }

}
