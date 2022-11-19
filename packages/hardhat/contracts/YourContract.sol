// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract YourContract {
    // State variables are stored on the blockchain.
    string public text = "Hello";
    uint public num = 123;
    uint public isGreaterThanZero;
    address public sender;

    function doSomething() public {
        uint i = 456;

        isGreaterThanZero = block.timestamp > 0 ? 1:0; // Current block timestamp
        sender = msg.sender; // address of the caller
    }
}
