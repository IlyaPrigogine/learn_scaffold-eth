// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NFT is ERC721 {
    constructor() ERC721("NFT", "NFT") {}
    uint public n;
    function mint(address _to) public {
        n++;
        super._mint(_to,n);
    }
}

    struct StudentScore {
        string name;
        uint score;
        string subject;
        string grade;
        bool checked;
    }

contract StudentNFT {
    StudentScore[] studentScores;
    NFT public nft;
    constructor (address _nft) {
        nft = NFT(_nft);
    }

    function create(StudentScore memory _s) public {
        nft.mint(msg.sender);
        studentScores.push(_s);
    }

    function toggleChecked(uint _index) public {
        studentScores[_index].checked = !studentScores[_index].checked;
        nft.mint(msg.sender);
    }

    function length() public view returns(uint) {
        return studentScores.length;
    }

    function get(uint _index) public view returns(StudentScore memory) {
        return studentScores[_index];
    }
}
