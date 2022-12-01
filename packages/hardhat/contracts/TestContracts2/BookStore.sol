// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

interface IBookStore {
    function name() external view returns(string memory);
    function location() external view returns(string memory);
    function PV() external view returns(uint);
}
contract BookStore {
    string public name;
    string public location;
    uint public PV;

    constructor(string memory _name, string memory _location, uint _PV) {
        name = _name;
        location = _location;
        PV = _PV;
    }
}

contract YourContract {
    BookStore[] public bookStores;

    /* public functions */
    function create(string memory _name, string memory _loc, uint _PV) public {
        BookStore bs = new BookStore(_name,_loc, _PV);
        bookStores.push(bs);
    }

    /* views */
    function getBookStores() public view returns(BookStore[] memory) {
        return bookStores;
    }

    function getBookStore(uint _index) public view returns(string memory _name, string memory _loc, uint _PV) {
        BookStore bs = bookStores[_index];
        return (
        bs.name(),
        bs.location(),
        bs.PV()
        );
    }
}

