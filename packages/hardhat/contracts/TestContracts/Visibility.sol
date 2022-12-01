// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract A {
    string public message;
    uint public num;
    function foo() public {
        message = string.concat(message,"A");
    }

    function bar() internal {
        num += 1;
    }

    function baz() external {
        bar();
    }
}

contract Visibility is A{

}

