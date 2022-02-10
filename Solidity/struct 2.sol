// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Struct{
    struct s{

        string name;
        uint age;
        address add;

    }

    s public p1;

    constructor(string memory _name,uint _age,address _add){
        p1.name=_name;
        p1.age=_age;
        p1.add=_add;
    }

    /*
    Memory in Solidity is a temporary place to store data
     whereas Storage holds data between function calls

      Every transaction on Ethereum Virtual Machine costs us some amount of Gas.
       The lower the Gas consumption the better is your Solidity code.
       The Gas consumption of Memory is not very 
       significant as compared to the gas consumption of Storage. 
       Therefore, it is always better to use Memory for intermediate 
       calculations and store the final result in Storage.

State variables and Local Variables of structs,
 array are always stored in storage by default.
Function arguments are in memory.
Whenever a new instance of an array is created using the keyword 
‘memory’, a new copy of that variable is created. 
Changing the array value of the new instance does not affect the original array.

    */

    function updateDelete() public{

     // p1.name="gagan";// it also works

        s storage p2=p1;
        p2.name="gagan";

   
   // delete aall

    //  delete p1;

// delete particular fields

    // delete p1.name;



    }

}
