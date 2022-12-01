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

    function set(uint _n) public {
        n = _n;
    }
}

contract TwoContracts_2 {
    A a;
    constructor () {
        a = A(0x391209eC7C62713F2DC48E6582Cc264872A5aCcD);
    }

    function incTwice() public {
        a.inc();
        a.inc();
    }

    function n() public view returns(uint) {
        return a.n();
    }

    function incTriple() public {
        a.inc();
        a.inc();
        a.inc();
    }

    function reset() public {
        a.set(1000);
    }
}

