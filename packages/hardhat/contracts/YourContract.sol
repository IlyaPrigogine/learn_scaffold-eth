// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";

contract YC is ERC721 {
    constructor() ERC721("YC", "YC") {}

    uint public n;
    function mint() public {
        n++;
        _safeMint(msg.sender,n);
    }
}

interface IYC {
    function mint() external;
}

contract YourContract {
}
