// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ENUM{

   enum Status{
       pending,    // by default [0]
       shipped,
       accepted,
       rejected,
       cancel
   }

   Status stat;

   function getstatus() public view returns(Status){
      return stat;
   }

   function setstatus(Status _stat) public{
      stat=_stat;
   }

    function rej() public{
       stat=Status.rejected;
    }

    function reset() public{
       delete stat;
    }
}
