// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract A {
    string public message;
    function foo() public {
        message = string.concat(message, "foo");
    }
}

contract YourContract is A{
    function test() public {
        A.foo();
    }

    function test2() public {
        super.foo();
    }
}

