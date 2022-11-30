// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Function {
    function returnMany() public pure returns (uint x, bool b, uint y) {
        x = 1; b = true; y = 2;
    }

    uint public balance = 2;
    function returnMany2() public view returns(uint x, bool b, uint y){
        x = balance - 1;
        y = balance + 1;
        b = false;
    }

    function inc() public {
        balance +=1;
    }

    function dec() public {
        balance -=1;
    }
}
