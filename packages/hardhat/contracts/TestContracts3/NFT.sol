// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";

contract ERC721Holder is IERC721Receiver {
    function onERC721Received(
        address,
        address,
        uint256,
        bytes memory
    ) public virtual override returns (bytes4) {
        return this.onERC721Received.selector;
    }
}

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

contract YCR is ERC721Holder {
    address public tokenAddress;
    constructor(address _addr) {
        tokenAddress = _addr;
    }
    function mint() public {
        IYC(tokenAddress).mint();
    }
}
