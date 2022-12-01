// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MTK is ERC20 {
    constructor() ERC20("My Token", "MTK") {
        super._mint(msg.sender, 10000e18);
    }
}

contract ERC20_4 {
    IERC20Metadata token;
    constructor () {
        token = IERC20Metadata(0x19a0870a66B305BE9917c0F14811C970De18E6fC);
    }

    function getTokenStatus() public view returns(string memory, string memory) {
        return (
        token.name(),
        token.symbol()
        );
    }

    function withdraw() public {
        token.transfer(msg.sender,1e18);
    }

    function userBalance() public view returns(uint) {
        return token.balanceOf(msg.sender);
    }

    function vaultBalance() public view returns(uint) {
        return token.balanceOf(address(this));
    }


}
