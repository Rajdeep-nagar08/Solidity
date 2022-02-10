// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract dynamicArray{

    uint[] public arr=[45,89,67,8];
     
    uint public t2;
    uint public len;

    function fun() public {
        // get
        t2=arr[2];

        //update
        arr[3]=59;

        // delete

        delete arr[0];

        // push in last

        arr.push(777);
        arr.push(770);
        arr.push(900);


         // pop from last

        arr.pop();

        // len
        len=arr.length;

    }
}
