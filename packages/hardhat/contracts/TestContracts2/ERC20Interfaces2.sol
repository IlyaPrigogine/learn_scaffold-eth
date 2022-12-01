// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

contract MyToken is ERC20 {
    constructor() ERC20("MyToken", "MTK") {}
}

contract MyContract {
    function aaa(address _addr) public view returns (string memory) {
        return IERC20Metadata(_addr).name();
    }

    function bbb(address _addr) public view returns (string memory) {
        return IERC20Metadata(_addr).symbol();
    }

    function ccc(address _addr) public view returns (uint) {
        return IERC20Metadata(_addr).decimals();
    }
}


