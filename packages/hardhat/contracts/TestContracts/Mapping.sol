// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Mapping {
    mapping(address => uint) myMap;
    function get(address _address) public view returns(uint) {
        return myMap[_address];
    }

    function set(address _address, uint _value) public {
        myMap[_address] = _value;
    }
}
