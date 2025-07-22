// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract View_Pure {
    uint public val = 10;

    // View
    function getter1() public view returns (uint) {
        return val;
    }

    // Pure
    function getter2(uint _val1) public pure returns (uint) {
        uint val2 = 20;
        return _val1 + val2;
    }
}
