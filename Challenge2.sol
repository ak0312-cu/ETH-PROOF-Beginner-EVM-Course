//SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract EtherValue{
    uint public ethVal;

    function setEthValue(uint _ethVal) public {
        ethVal = _ethVal;
    }

    function getEthValue() public view returns(uint){
        return ethVal;
    }

    function getWeiValue() public view returns(uint){
        return ethVal*(10**18);
    }

    function getGweiValue() public view returns(uint){
        return ethVal*(10**9);
    } 
}