// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract YourContract {
    function encodeWithSignature(address to, uint amount) external pure returns (bytes memory)
    {
        return abi.encodeWithSignature("transfer(address,uint256)", to, amount);
    }

    function encodeWithSelector(address to, uint amount) external pure returns (bytes memory)
    {
        return abi.encodeWithSelector(IERC20.transfer.selector, to, amount);
    }

    function encodeCall(address to, uint amount) external pure returns (bytes memory) {
        return abi.encodeCall(IERC20.transfer, (to, amount));
    }
}
