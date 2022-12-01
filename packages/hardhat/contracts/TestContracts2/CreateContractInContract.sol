// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Car {
    address public owner;
    string public model;
    address public carAddr;
    constructor (address _owner, string memory _model) {
        owner = _owner;
        model = _model;
        carAddr = address (this);
    }
}

interface ICar {
    function owner() external view returns(address);
    function model() external view returns(string memory);
    function carAddr() external view returns(address);

}

contract CreateContract {
    Car[] cars;

    function create (string memory _model) external {
        Car car = new Car(msg.sender,_model);
        cars.push(car);
    }

    function getCarModel(uint _index) external view returns (string memory) {
        address addr = address (cars[_index]);
        return ICar(addr).model();
    }

    function getCarOwner(uint _index) external view returns(address) {
        return ICar(address(cars[_index])).owner();
    }

    function getCarAddr(uint _index) external view returns(address) {
        return ICar(address(cars[_index])).carAddr();
    }

}

