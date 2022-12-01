// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Receive {
    receive() external payable {}

    function balance() public view returns(uint) {
        return address (this).balance;
    }
}

