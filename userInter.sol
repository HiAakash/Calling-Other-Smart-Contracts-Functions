//SPDX-License-Identifier:MIT
pragma solidity ^0.6.0;

interface calculator{
    function add(uint,uint) external view returns(uint);
    function mul(uint,uint) external view returns(uint);
}

contract useri{
    function addition(address _calc,uint a,uint b) external view returns(uint){
       uint c =calculator(_calc).add(a,b);
       return c;
        
    }
    function multiplication(address _calc,uint a,uint b) external view returns(uint){
       uint c =calculator(_calc).mul(a,b);
       return c;
    }
    
}
  
