// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract YourContract {
    // coding convention to uppercase constant variables
    address public MY_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    uint public constant MY_UINT = 123;

    function setMY_ADDRESS() public {
        MY_ADDRESS = msg.sender;
    }
}
