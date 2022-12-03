// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Car {
    string public name;
    uint public price;
    constructor (string memory _name, uint _price) {
        name = _name;
        price = _price;
    }
}

contract CarFactory {
    address[] carAddresses;
    function create(string memory name, uint price) public {
        Car car = new Car(name, price);
        carAddresses.push(address(car));
    }
    /* public views*/
    function getCar(uint _index) public view returns (string memory name, uint, address){
        address carAddress = carAddresses[_index];
        Car car = Car(carAddress);
        return (
        car.name(),
        car.price(),
        carAddress
        );
    }
    function getCarLength() public view returns(uint) {
        return carAddresses.length;
    }
    function getCarFromAddress(address _addr) public view returns(string memory name, uint) {
        Car car = Car(_addr);
        return (car.name(), car.price());
    }
}
