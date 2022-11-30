// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract X {
    string public name;
    constructor (string memory _name) {
        name = _name;
    }
}

contract Y {
    uint public y;
    constructor () {
    }
}

contract YourContract is X,Y{
    constructor () X("X was called") {

    }
}


