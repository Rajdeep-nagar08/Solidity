// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ternary{

    function ter(uint _x,uint _y,uint _z) public pure returns(uint){
        uint _g;
        _g=_x>_y?(_x>_z?_x:_z):(_y>_z?_y:_z);
        return _g;
    }
}
