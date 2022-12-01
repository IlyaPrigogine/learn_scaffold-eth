// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {
    constructor () ERC20("MTK","MTK") {
        super._mint(msg.sender, 10000e18);
    }
}

contract TokenA is Token {
    function getBalance() public view returns(uint) {
        return this.balanceOf(msg.sender);
    }
}

contract TokenB is TokenA {

}

contract TokenTotal {

}

