// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract YourContract {
    address public owner;
    receive() external payable {}
    constructor () {
        owner = msg.sender;
    }

    function deposit() external payable{
        payable(this).transfer(msg.value);
    }

    function withdraw() external {
        require(msg.sender == owner,"only owner");
        payable(msg.sender).transfer(address(this).balance);
    }

    function changeOwner() external {
        owner = msg.sender;
    }

    /* views */
    function balance() external view returns(uint) {
        return address(this).balance;
    }
}
