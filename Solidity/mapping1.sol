// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Mapping{    // key=>value   (value can be uint,string,enum,struct)
   
// mapping declare on contract level

mapping(uint=>string) public emp_id;
 
     function setId() public{
      
      emp_id[20]="Mohit";
      emp_id[27]="Rohit";
      emp_id[28]="Rahul";

      emp_id[17]="Raju";

  }

  function get_id(uint _id) public view returns(string memory){
    
    return emp_id[_id];

  }

    
         
  }
