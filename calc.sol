// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;


contract Calc{
    
    function add(uint a,uint b) external view returns(uint){
        uint c = a+b;
        return c;
    }
    
    function mul (uint c,uint d) external view returns(uint){
        uint e = c*d;
        return e;
    }
}