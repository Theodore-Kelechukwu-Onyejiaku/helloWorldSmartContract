// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

contract HelloWorld{
    string public smartContractUser;
    string public creator = "Theodore";
    string public greeting = "hello world";


    constructor(string memory username){
        smartContractUser = username;
    }

    function createUser(string memory newUser) public{
        smartContractUser = newUser;
    }

    function greetUser() public view returns (string memory){
        return string(abi.encodePacked(greeting));
    }
    function getRecord() public view returns (string memory){
        return string(abi.encodePacked(greeting, smartContractUser));
    }

    
}