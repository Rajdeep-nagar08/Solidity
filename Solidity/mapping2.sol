// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

    // address=> name,age,place,balance
struct doner_dtls{
    string name;
    uint age;
    string add;
    uint don;
}

contract Advanced_Mapping{

   mapping(address=>doner_dtls) public acc_info;

   function set(string memory _name,uint _age,string memory  _add,uint _don)  public{
      
      acc_info[msg.sender]=doner_dtls(_name,_age,_add,acc_info[msg.sender].don+_don);

    // msg.sender== address of deployer
   }

    function delete_Info() public{
        delete acc_info[msg.sender];
        
    }
}
