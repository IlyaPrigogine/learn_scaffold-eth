// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract A{
    string public message;
    function foo() public virtual {
        message = string.concat(message,"A");
    }
}

contract B is A {
    function foo() public virtual override {
        message = string.concat(message, "B");
    }
}

contract Inherits is B{
    function foo() public virtual override {
        message = string.concat(message, "YOU");
    }
}

