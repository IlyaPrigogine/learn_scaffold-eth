// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract X {
    string public name;
    constructor (string memory _name) {
        name = _name;
    }
}

contract Y {
    uint public n;
    constructor (uint _n) {
        n = _n;
    }
}


contract YourContract is X,Y{
    uint public balance;
    constructor () X("X is called") Y(3){
    }
}

