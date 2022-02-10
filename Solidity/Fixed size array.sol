// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract fixedSizearray{

uint[5] public arr1=[10,20,30,405,0];

function array() public { 
 // pure function (use to update memory variables - things outside the fun) , note- pure fun not returns any thing
   
    // get
    uint temp;
    temp=arr1[3];

 // update
    arr1[2]=3000; 
    
    // delete
    delete arr1[0];   // after deletion , arr[0]=0 (default value)

  }
    
    function len1() public view returns(uint){
        uint l=arr1.length;
        return l;
    }

// intializing array using function 

 uint[5] public arr2;

 function array2(uint _x) public{
     for(uint i=0;i<arr2.length;i++){
         arr2[i]=_x + i;
     }

 }


   // array inside function , use memory keyword (as similar to strings)

   function array3() public pure returns(uint){
       uint[] memory arr3=new uint[](5);  // fixed size array

       arr3[1]=13;

       return arr3[1];

   }

   //  access whole array array (make getter function)

    uint[3] arr4;

    constructor(){
        arr4=[25,23,78];
    }
  
    function array4() public view returns(uint[3] memory){
        return arr4;
    }
    
}
