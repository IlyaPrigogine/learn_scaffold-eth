//// SPDX-License-Identifier: GPL-3.0
//
//pragma solidity >=0.7.0 <0.9.0;
//import "remix_tests.sol";
//import "../contracts/CarFactory.sol";
//
//contract CarFactoryTest {
//
//    CarFactory s;
//    function beforeAll () public {
//        s = new CarFactory();
//        s.create("tesla",1000000);
//        s.create("benz",500000);
//        s.create("toyota",300000);
//    }
//
//    function testCarFactory_GetCarLength () public {
//        Assert.equal(s.getCarLength(),3,"error");
//    }
//
//    function testCarFactory_getCar_0() public {
//        (string memory name, uint price, address addr)= s.getCar(0);
//        Assert.equal(name,"tesla","name error for 0");
//        Assert.equal(price,1000000,"price error for 0");
//        Assert.notEqual(addr,address(0),"addr error for 0");
//    }
//
//    function testCarFactory_getCar_1() public {
//        (string memory name, uint price, address addr)= s.getCar(1);
//        Assert.equal(name,"benz","name error for 1");
//        Assert.equal(price,500000,"price error for 1");
//        Assert.notEqual(addr,address(0),"addr error for 1");
//    }
//
//    function testCarFactory_getCarFromAddress_0() public {
//        ( , , address addr)= s.getCar(0);
//        (string memory name, uint price) = s.getCarFromAddress(addr);
//        Assert.equal(name,"tesla","name error for 0");
//        Assert.equal(price,1000000,"price error for 0");
//    }
//}
