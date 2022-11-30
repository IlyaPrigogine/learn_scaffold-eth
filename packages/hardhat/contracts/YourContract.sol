// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract YourContract {
    event Log(address indexed sender,string message);

    function test() public {
        emit Log(msg.sender, "TEST LOG");
    }
}
