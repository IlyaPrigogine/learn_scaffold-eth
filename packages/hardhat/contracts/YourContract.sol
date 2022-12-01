// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract A {
    string public message;
    uint public num;
    function _foo() internal {
        message = string.concat(message,"A");
    }

    function _bar() internal {
        num += 1;
    }
}
contract YourContract is A {
    function bar() public {
        super._bar();
    }

    function foo() public {
        super._foo();
    }
}
