// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract YourContract {
    mapping (address => uint)  mapUint;

    function setUint(address _addr, uint _value) public {
        mapUint[_addr] = _value;
    }
    function getUint(address _addr) public view returns(uint) {
        return mapUint[_addr];
    }
    function removeUint(address _addr) public {
        delete mapUint[_addr];
    }
}
