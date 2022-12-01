// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Foo{
    address public owner;
    constructor (address _addr) {
        owner = _addr;
    }
}

interface IFoo {
    function owner() external view returns(address);
}

contract YourContract{
    address public curAddr;
    function create() public {
        Foo foo = new Foo(msg.sender);
        curAddr = address (foo);
    }

    function getOwner() public view returns(address) {
        return IFoo(curAddr).owner();
    }
}
