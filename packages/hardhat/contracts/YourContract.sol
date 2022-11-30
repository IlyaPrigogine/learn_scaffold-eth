// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract YourContract {
    function returnMany() public pure returns (uint, bool, uint) {
        return (1, true, 2);
    }

    function named() public pure returns (uint x, bool b, uint y) {
        x = 3; b = false; y = 4;
    }
}
