// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract A {
    string public message;
    function foo() public {
        message = string.concat(message,"A");
    }
}

contract YourContract is A{

}

