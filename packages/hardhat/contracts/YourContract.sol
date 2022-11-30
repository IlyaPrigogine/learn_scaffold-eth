// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract A {
    function foo() public view virtual returns(string memory) {
        return "A";
    }
}

contract B is A{
    function foo() public view override returns(string memory) {
        return "B";
    }
}

contract YourContract is A {

}



