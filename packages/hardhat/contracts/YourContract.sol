// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
contract Car {
    string public model;
    uint public price;
    address public owner;
    address public carAddress;

    constructor (string memory _model, uint _price, address _owner) {
        model = _model;
        price = _price;
        owner = _owner;
        carAddress = address (this);
    }
}

interface ICar {
    function model() external view returns(string memory);
    function price() external view returns(uint);
    function owner() external view returns(address);
    function carAddress() external view returns(address);
}


contract YourContract {
    Car[] public cars;

    function createCar(string memory _model, uint _price) public {
        Car car = new Car(_model, _price, msg.sender);
        cars.push(car);
    }

    /* views */
    function getCar(uint _index) public view returns(string memory, uint, address, address) {
        Car car = cars[_index];
        return (
            car.model(),
            car.price(),
            car.owner(),
            car.carAddress()
    );
    }

    function getCars() public view returns (Car[] memory) {
        return cars;
    }
}

