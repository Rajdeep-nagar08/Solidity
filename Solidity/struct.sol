// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Struct{
    struct s1{
        string name;
        uint age;
        address add;

    }


   //  s1[] public arr1;   array of struct
     s1 public px;
     s1 public py;
     s1 public pz;

     function setValues() public  {

            px=s1("raja",20,0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
      
            py=s1({age:21,name:"gagan",add:msg.sender});

            pz;

           pz.name="Nidhi";
           pz.age=22;
           pz.add=0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

     }
}
