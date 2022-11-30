// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract A {
    string public name = "Contract A";
    function getName() public view virtual returns (string memory) {
        return name;
    }
}

contract Shadowing is A {
    constructor() {
    }

    function getName() public view override returns(string memory) {
        return "YourContract";
    }
}
