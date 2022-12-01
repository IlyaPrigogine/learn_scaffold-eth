// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MTK is ERC20 {
    constructor() ERC20("MTK", "MTK") {
        super._mint(msg.sender, 10000e18);
    }
}


contract YourContract  {
    function foo(address _addr) public view returns(string memory) {
        return IERC20Metadata(_addr).name();
    }
}
