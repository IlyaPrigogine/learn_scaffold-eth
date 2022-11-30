// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract X {
    string public XName;
    constructor (string memory _name) {
        XName = _name;
    }
}

contract Y {
    string public YName;
    constructor (string memory _name) {
        YName = _name;
    }
}
contract YourContract is X,Y{
    address public owner;
    constructor () X("X world") Y("Y world"){
        owner = msg.sender;
    }

    function setName(string memory _XName, string memory _YName) public {
        XName = _XName;
        YName = _YName;
    }
}
