// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Cafe {
    string public name;
    constructor (string memory _name) {
        name = _name;
    }
}

contract CafeFactory {
    address[] cafes;
    function create(string memory _name) public {
        Cafe cafe = new Cafe(_name);
        cafes.push(address(cafe));
    }

    function getCafeLength() public view returns (uint) {
        return cafes.length;
    }

    function getCafe(uint _index) public view returns(string memory) {
        address cafeAddress = cafes[_index];
        return Cafe(cafeAddress).name();
    }
}
