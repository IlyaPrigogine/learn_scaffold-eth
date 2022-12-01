// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

contract MyToken is ERC20 {
    constructor() ERC20("M", "M") {}
}

contract MyContract {
    uint public num;
    function inc() public {
        num++;
    }
}

contract MyContract_Token {
    function getName(address _addr) public view returns (string memory name) {
        name = IERC20Metadata(_addr).name();
    }

    function getSymbol(address _addr) public view returns (string memory symbol) {
        symbol = IERC20Metadata(_addr).symbol();
    }
}
