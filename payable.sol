// SPDX-License-Identifier: MIT

pragma solidity >= 0.5.0 < 0.9.0;

contract Payable {
    address payable public owner = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);

    function payEther() public payable {

    }

    function getBal() public view returns(uint) {
        return address(this).balance;
    }

    function transferEther() public {
        owner.transfer(1 ether);
    }

}
