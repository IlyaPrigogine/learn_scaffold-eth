// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract A {
    function foo() public view virtual returns(string memory) {
        return "A";
    }
}

contract YourContract is A{
    function foo() public view override returns(string memory) {
        return "YourContract";
    }
}


