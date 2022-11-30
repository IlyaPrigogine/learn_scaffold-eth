// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract A {
    function foo() public view virtual returns(string memory) {
        return "A";
    }
}

contract B is A {
    function foo() public view override virtual returns(string memory) {
        return "B";
    }
}

contract C is A {
    function foo() public view virtual override returns(string memory) {
        return "C";
    }
}

contract Inherits is C {
    function foo() public view override returns(string memory) {
        return "YourContract";
    }
}



