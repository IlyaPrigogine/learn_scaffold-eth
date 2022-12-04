// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

    struct Teacher {
        string name;
        uint age;
        address[] students;
    }

contract A {
    Teacher [] teachers;
    function create(Teacher memory _t) public {
        teachers.push(_t);
    }

    function length() public view returns(uint) {
        return teachers.length;
    }

    function get(uint _index) public view returns(Teacher memory) {
        return teachers[_index];
    }
}
