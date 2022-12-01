// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./Foo.sol";

contract Temp{
    address public fooAddr;
    function create() public {
        Foo foo = new Foo(msg.sender);
        fooAddr = address (foo);
    }

    function getFooOwner() public view returns(address) {
        return IFoo(fooAddr).owner();
    }
}
