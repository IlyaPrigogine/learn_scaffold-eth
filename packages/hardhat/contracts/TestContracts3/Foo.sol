// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

interface IFoo {
    function owner() external view returns(address);
}

contract Foo {
    address public owner;
    constructor (address _addr) {
        owner = _addr;
    }
}
