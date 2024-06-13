//SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract looping{
    function simpleLoop(uint a) external pure returns(uint){
        for(uint i=0;i<1000;i++){
            a+=i;
        }
        return a;
    }
    function complexLoop(uint b) external pure returns(uint){
        for(uint i=0;i<100;i++){
            b*=i**i;
        }
        return b;
    }
}