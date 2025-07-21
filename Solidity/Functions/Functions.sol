// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract Functions {
    uint val = 10;

    // Getter function
    function getter() public view returns (uint) {
        return val;
    }

    // Setter function
    function setter(uint _newVal) public {
        val = _newVal;
    }
}
