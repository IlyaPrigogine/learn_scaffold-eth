// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

interface ICounter {
    function inc() external;
}


contract A {
    uint public num;
    function inc() public {
        num++;
    }
}

contract B {
    string public message;
    function inc() public {
        message = string.concat(message,"B");
    }
}

contract MyContract {
    function foo(address _addr) public {
        ICounter(_addr).inc();
    }
}
