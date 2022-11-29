// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract YourContract {
    uint[] arr2 = [1, 2, 3];

    function getValue(uint _index) public returns(uint) {
        return arr2[_index];
    }
}
