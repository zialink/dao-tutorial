// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

// We will add the Interfaces here

contract CryptoDevsDAO is Ownable {
    // Interfaces for FakeNFTMarketplace
    interface IFakeNFTMarketplace {
        function getPrice() external view returns (uint256);

        function available(uint256 _tokenId) external view returns(bool);

        function purchase(uint256 _tokenId) external payable;
    }

    interface ICryptoDevsNFT {
        function balanceOf(address owner) external view returns (uint256);

        function tokenOfOwnerByIndex(address owner, uint256 index) external view returns (uint256);
    }
    
}