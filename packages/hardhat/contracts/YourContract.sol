// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract YourContract {
    address public owner;
    uint public balance;
    constructor () {
        owner = msg.sender;
    }
    function setOwner() public {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner, "not owner");
        _;
    }

    function setBalance(uint _balance) public onlyOwner {
        balance = _balance;
    }
}

