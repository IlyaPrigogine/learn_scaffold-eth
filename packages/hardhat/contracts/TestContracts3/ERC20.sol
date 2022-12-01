// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

interface IFoo {
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address to, uint256 amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool);
    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
}

contract TESTERC20 {
    address tokenAddress;
    string tokenName;
    string tokenSymbol;
    function create() public {
        tokenName = string.concat(tokenName,"YT");
        tokenSymbol = string.concat(tokenSymbol,"YTS");

        ERC20 erc20 = new ERC20(tokenName,tokenSymbol);
        tokenAddress = address (erc20);
    }

    function getName() public view returns(string memory) {
        return IFoo(tokenAddress).name();
    }

    function getSymbol() public view returns(string memory) {
        return IFoo(tokenAddress).symbol();
    }

    function getTotalSupply() public view returns(uint) {
        return IFoo(tokenAddress).totalSupply();
    }
}

