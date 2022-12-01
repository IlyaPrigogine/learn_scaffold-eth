// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

interface UniswapV2Factory {
    function getPair(address tokenA, address tokenB) external view returns (address pair);
}

interface UniswapV2Pair {
    function getReserves() external view returns(uint112 reserve0,uint112 reserve1,uint32 blockTimestampLast);
}

interface IERC20Metadata {
    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
}

contract UniswapExample {
    address private factory = 0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f;
    address private tokenA = 0x25839b633dE31B952DDe70792B9F5002F69FBF7E;
    address private tokenB = 0xc1C0472c0C80bCcDC7F5D01A376Bd97a734B8815;

    function foo() external view returns(uint, uint) {
        address pair = UniswapV2Factory(factory).getPair(tokenA,tokenB);
        (uint reserve0, uint reserve1, ) = UniswapV2Pair(pair).getReserves();
        return (reserve0,reserve1);
    }

    function getTokenA() external view returns(string memory, string memory) {
        return (IERC20Metadata(tokenA).name(),IERC20Metadata(tokenA).symbol());
    }

    function getTokenB() external view returns(string memory, string memory) {
        return (IERC20Metadata(tokenB).name(),IERC20Metadata(tokenB).symbol());
    }
}
