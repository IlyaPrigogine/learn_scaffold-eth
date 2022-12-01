// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract YourContract  {
    receive() external payable {}
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    uint public num;
}


