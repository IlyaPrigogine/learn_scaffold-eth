// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract MappingBool {
    mapping (address => bool) MapBool;
    function get(address _addr) public view returns(bool) {
        return MapBool[_addr];
    }
    function set(address _addr, bool _value) public {
        MapBool[_addr] = _value;
    }
    function remove(address _addr) public {
        delete MapBool[_addr];
    }
}
