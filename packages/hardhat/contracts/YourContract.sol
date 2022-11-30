// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract YourContract {
    uint public balance;
    function deposit(uint _amount) public {
        uint oldBalance = balance;
        uint newBalance = oldBalance + _amount;
        require(newBalance >= oldBalance, "OverFlow");
        balance += _amount;

        assert(balance>=oldBalance);
    }

    function withdraw(uint _amount) public {
        uint oldBalance = balance;
        require(_amount <= balance, "no enough");
        balance -= _amount;

        assert(balance<=oldBalance);
    }
}
