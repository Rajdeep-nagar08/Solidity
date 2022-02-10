// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract DynamicSizeByte{
   
   bytes temp1="abcde89fg";
  
    function pushElement() public {
      temp1.push('9');

    }

    function popElement() public {
    temp1.pop();
    }

    function getlength() public view returns(uint){
      return temp1.length;
    }

    function getElement(uint _idx) public view returns(bytes1){
      return temp1[_idx];
    }
 }
