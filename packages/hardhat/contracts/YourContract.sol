// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract YourContract {
    uint public oneWei = 1 wei;
    bool public isOneWei = oneWei == 1;

    uint public oneEther = 1 ether;
    bool public isOneEther = oneEther == 1e18;

    function setOneWei(uint _n) public {
        oneWei = _n;
    }
    function setOneEther(uint _n) public {
        oneEther = _n * 1e18;
    }

    function getIsOneEther() public view returns(bool) {
        return oneEther == 1e18 ? true: false;
    }
}
