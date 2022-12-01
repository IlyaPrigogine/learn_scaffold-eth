// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract A {
    uint public n;
    function inc() public {
        n++;
    }
    constructor ( ) {
        n = 1000;
    }
}

contract TwoContracts_2 {
    A a;
    constructor (address _addr) {
        a = A(_addr);
    }

    function incTwice() public {
        a.inc();
        a.inc();
    }
}

