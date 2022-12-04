// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract YourContract {
    receive() external payable {}
    function deposit() public payable{
        payable(this).transfer(msg.value);
    }

    function withdraw() public {
        payable(msg.sender).transfer(address(this).balance);
    }

    // public views
    function balance() public view returns(uint) {
        return address(this).balance;
    }
}
