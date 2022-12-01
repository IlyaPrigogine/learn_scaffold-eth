// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MTK is ERC20 {
    constructor() ERC20("MTK2", "MTK22") {
        super._mint(msg.sender, 10000e18);
    }
}


contract ERC20_3  {
    address public tokenAddress;
    function create() public {
        MTK mtk = new MTK();
        tokenAddress = address(mtk);
    }

    function getVaultBalance() public view returns(uint) {
        return IERC20Metadata(tokenAddress).balanceOf(address(this));
    }

    function getBalance() public view returns(uint) {
        return IERC20Metadata(tokenAddress).balanceOf(msg.sender);
    }

    function withdraw() public {
        IERC20Metadata(tokenAddress).transfer(msg.sender,1e18);
    }
}
