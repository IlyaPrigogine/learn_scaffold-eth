// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract YourContract is ERC20 {
    address public owner;
    constructor () ERC20("YC","YCT") {
        super._mint(msg.sender,10000e18);
        owner = msg.sender;
    }
}
