//SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract StoreValues{
    uint public uid;
    string public name;
    address public ethAddress;
    bool public status;

//Get function to assign value to uid state variable 
    function getUID(uint _uid) public {
        uid = _uid;
    }

//Get function to assign value to name state variable 
    function getName(string memory _name) public {
        name = _name;
    }

//Get function to assign value to ethAddress state variable 
    function getEthAddress(address _ethAddress) public {
        ethAddress = _ethAddress;
    }

//Get function to assign value to status state variable 
    function getStatus(bool _status) public {
        status = _status;
    }

//Set function to return value of uid state variable 
    function setUID() public view returns(uint){
        return uid;
    }

//Set function to return value of name state variable
    function setName() public view returns(string memory){
        return name;
    }

//Set function to return value of ethAddress state variable
    function setEthAddress() public view returns(address){
        return ethAddress;
    }

//Set function to return value of status state variable
    function setStatus() public view returns(bool){
        return status;
    }
}