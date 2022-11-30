// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Assert {
    uint public balance;
    uint public constant MAX_UINT = 2**256 - 1;

    function deposit(uint _amount) public {
        uint oldBalance = balance;
        uint newBalance = balance + _amount;
        require(newBalance >= oldBalance, "OverFlow");
        balance = newBalance;
        assert(balance >= oldBalance);
    }

    function withdraw(uint _amount) public {
        uint oldBalance = balance;
        require(balance >= _amount, "underflow");
        balance -= _amount;
        assert (balance <= oldBalance);
    }
}
