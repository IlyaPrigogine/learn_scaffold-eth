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
    constructor () {
        a = A(0xAb2185E2b94F2df4B4A9aAa6400160E90871F5bA);
    }

    function incTwice() public {
        a.inc();
        a.inc();
    }

    function n() public view returns(uint) {
        return a.n();
    }
}

