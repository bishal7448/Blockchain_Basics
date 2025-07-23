// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Pay {
    address public immutable owner;

    constructor() {
        owner = msg.sender;
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    function payEther() public payable {

    }

    function senEther(address _receiver, uint _ammount) public {
        address payable receiver = payable(_receiver);
        receiver.transfer(_ammount);
    }
    
}