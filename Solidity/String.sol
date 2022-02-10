// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract studyString{
/* in solidity , strings always stored in storage (block) , so we declare strings as 
  state variable in solidity instead of local variables 
  ( not declare them inside the function)

if wants to declare them inside the function, use keyword "memory"
so i wants to use strings on the lavel of function (use keyword memory)

  */

  string public str="Rajdeep";  // state variable

  function checkstring() public pure returns(string memory) {
     string memory name="aman";     // storing the string to memory (explictively)
     return name;

  }


}
