// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Function {
    function returnMany() public pure returns (uint, bool, uint) {
        return (1, true, 2);
    }

    function named() public pure returns (uint x, bool b, uint y) {
        x = 3; b = false; y = 4;
    }

    function destructuringAssignments() public pure returns (uint, bool, uint, uint, uint) {
        (uint i, bool b, uint j) = returnMany();
        (uint x, , uint y) = (4, 5, 6);
        return (i, b, j, x, y);
    }

    function destructuringAssignments2() public pure returns (uint i, bool b, uint j, uint x, uint y) {
        ( i,  b,  j) = returnMany();
        ( x, ,  y) = (4, 5, 6);
        return (i, b, j, x, y);
    }
}
