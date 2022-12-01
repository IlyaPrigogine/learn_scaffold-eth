// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract A {
    uint public n;
    function inc() public {
        n++;
    }
    function set(uint _n) public {
        n = _n;
    }
    function dec() public {
        n--;
    }
}

contract B {
    A a = A(0xb5465ED8EcD4F79dD4BE10A7C8e7a50664e5eeEB);
    function getN() public view returns(uint) {
        return a.n();
    }

    function incTwice() public {
        a.inc();
        a.inc();
    }

    function reset() public {
        a.set(0);
    }

    function incTriple() public {
        a.inc();
        a.inc();
        a.inc();
    }

    function decFiveTimes() public {
        for (uint i=0; i<5; i++) {
            a.dec();
        }
    }
}
