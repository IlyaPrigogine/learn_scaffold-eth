// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract YourContract {
    receive() external payable {}

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    function withdraw(uint _amount) public {
        payable(msg.sender).transfer(_amount);
    }

    function deposit() public payable {
        payable(this).transfer(msg.value);
    }
}
