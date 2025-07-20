// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract Function {
    uint public val = 10;

    function add() public returns (uint) {
        val += 1;
        return val;
    }
}
