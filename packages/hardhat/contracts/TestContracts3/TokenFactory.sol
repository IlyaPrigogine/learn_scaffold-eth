// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TokenA is ERC20 {
    constructor() ERC20("TokenA","TKA") {
        super._mint(msg.sender,10000e18);
    }
}

contract TokenB is ERC20 {
    constructor() ERC20("TokenB","TKB") {
        super._mint(msg.sender,10000e18);
    }
}

contract Staking {
    ERC20 token;
    constructor (address _addr) {
        token = ERC20(_addr);
    }

    function stake(address _from, uint _amount) external {
        token.transferFrom(_from, address(this), _amount);
    }
}

interface IStaking{
    function stake(address _from, uint _amount) external;
}

contract TokenFactory {
    mapping(address => address) public stakings;

    function createStaking(address _erc20Address) public {
        Staking s = new Staking(_erc20Address);
        stakings[_erc20Address] = address(s);
    }

    function stake(address _erc20Address, uint _amount) public {
        require(stakings[_erc20Address] != address(0),"no stakings");
        address staking = stakings[_erc20Address];
        IStaking(staking).stake(msg.sender, _amount);
    }

    function getStaking(address _erc20Address) public view returns(address) {
        return stakings[_erc20Address];
    }
}
