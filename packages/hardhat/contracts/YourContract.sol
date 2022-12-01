// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

interface IStore {
    function name() external view returns(string memory);
    function loc() external view returns(string memory);
}

interface IBookStore is IStore {
    function PV() external view returns(uint);
}

contract BookStore {
    string public name;
    string public loc;
    uint public PV;
    constructor (string memory _name, string memory _loc, uint _PV) {
        name = _name;
        loc = _loc;
        PV = _PV;
    }
}

contract Store {
    string public name;
    string public loc;
    constructor (string memory _name, string memory _loc) {
        name = _name;
        loc = _loc;
    }
}

contract YourContract {
    address public curStoreAddress;
    function create(string memory _name, string memory _loc, uint _PV) public{
        BookStore bs = new BookStore(_name, _loc, _PV);
        curStoreAddress = address (bs);
    }

    function create(string memory _name, string memory _loc) public {
        Store s = new Store(_name, _loc);
        curStoreAddress = address (s);
    }

    function getBookStore() public view returns(string memory name, string memory loc,uint PV) {
        name = IBookStore(curStoreAddress).name();
        loc  = IBookStore(curStoreAddress).loc();
        PV = IBookStore(curStoreAddress).PV();
    }

    function getStore() public view returns(string memory name, string memory loc) {
        name = IStore(curStoreAddress).name();
        loc  = IStore(curStoreAddress).loc();
    }
}
