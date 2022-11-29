// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Array {
    uint[] arr2 = [1, 2, 3];


    function get(uint _i) public view returns(uint) {
        return arr2[_i];
    }

    function getArr() public view returns(uint[] memory) {
        return arr2;
    }

    function push(uint _i) public {
        arr2.push(_i);
    }

    function pop() public {
        arr2.pop();
    }

    function getLength() public view returns(uint) {
        return arr2.length;
    }

    function remove(uint _index) public {
        delete arr2[_index];
    }
}
