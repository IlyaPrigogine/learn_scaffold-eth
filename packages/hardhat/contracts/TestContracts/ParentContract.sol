// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract A {
    string public message;

    function foo() public virtual {
        message = "foo";
    }

    function bar() public virtual {
        message = "bar";
    }
}

contract ParentContract is A {
    function foo() public override {
        A.bar();
    }

    function foo2() public {
        super.foo();
    }

}

