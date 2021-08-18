// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;



contract A{
    uint public num;
    function incre(uint _num) public{
        num = _num;
    }
    
    function paidIncre(uint _num) public payable{
        require(msg.value!=0);
        num = _num;
    }
}

contract B{
    
    function callIncre(address _addressA,uint number) public{
        A a = A(_addressA);
        a.incre(number);
    }
    
    function callpaidIncre(address _addressA,uint number) public payable{
        A a = A(_addressA);
        a.paidIncre{value:msg.value}(number);
    }
    
    
}