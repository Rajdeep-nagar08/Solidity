// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract loops{

    //loops only works at function lavel

    function loop() public pure returns(uint) {
        uint count=0;

        for(uint i=0;i<10;i++){
            count+=10;
        }


        uint j=0;
        while(j<10){
            count+=5;
          j++;
        }

        
        return count;
    }
}
