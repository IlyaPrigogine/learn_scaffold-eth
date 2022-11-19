// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract YourContract {
    // coding convention to uppercase constant variables
    address public immutable MY_ADDRESS;
    uint public immutable MY_UINT;

    constructor() {
        MY_ADDRESS = msg.sender;
        MY_UINT = 1;
    }


}
