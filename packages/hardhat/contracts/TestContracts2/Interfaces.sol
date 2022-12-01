// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract A {
    uint public num;
    function inc() public {
        num +=1;
    }
}

interface ICounter {
    function inc() external;
    function num() external view returns(uint);
}

contract MyContract {
    function foo(address _addr) public {
        ICounter(_addr).inc();
    }

    function get(address _addr) external view returns(uint) {
        return ICounter(_addr).num();
    }
}
