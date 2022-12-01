// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract A {
    uint public num;
    constructor ()  {
        num = 1;
    }
    function inc() public {
        num ++;
    }
}

contract TwoContracts {
    A a;
    constructor (address _addr) {
        a = A(_addr);
    }

    function getNum() public view returns(uint) {
        return a.num();
    }

    function foo() public {
        a.inc();
    }
}
