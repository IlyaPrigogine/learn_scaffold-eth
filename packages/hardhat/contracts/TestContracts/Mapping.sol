// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract YourContract {
    mapping(address => uint) myMap;
    function get(address _address) public view returns(uint) {
        return myMap[_address];
    }
}
