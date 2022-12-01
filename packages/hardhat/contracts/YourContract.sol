// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;


contract Car {
    string public model;
    uint public price;
    address public carHash;
    address public carOwner;

    constructor(
        string memory _model,
        uint _price,
        address _carOwner
    ) {
        model = _model;
        price = _price;
        carHash = address (this);
        carOwner = _carOwner;
    }
}

interface ICar {
    function model() external view returns(string memory);
    function price() external view returns(uint);
    function carHash() external view returns(address);
    function carOwner() external view returns(address);
}

contract YourContract {
    Car[] public cars;
    function getCars() public view returns (Car[] memory) {
        return cars;
    }

    function create(string memory _model, uint _price) public {
        Car car = new Car(_model,_price,msg.sender);
        cars.push(car);
    }

    function getCar(uint _index) external view returns(string memory,uint, address, address) {
        return (
            ICar(address(cars[_index])).model(),
            ICar(address(cars[_index])).price(),
            ICar(address(cars[_index])).carHash(),
            ICar(address(cars[_index])).carOwner()
        );
    }

}

