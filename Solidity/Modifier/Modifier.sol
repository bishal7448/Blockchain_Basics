// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Modifier {
    address public owner;
    uint256 public price = 1 ether;

    event UpdatePrice(uint256 oldPrice, uint256 newPrice);

    error OnlyOwner();

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        if (msg.sender != owner) {
            revert OnlyOwner();
        }
        _;
    }

    function updatePrice(uint _newPrice) external onlyOwner {
        uint256 oldPrice = price;
        price = _newPrice;
        emit UpdatePrice(oldPrice, price);
    }

}