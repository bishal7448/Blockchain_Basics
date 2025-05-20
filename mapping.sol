// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 < 0.9.0;

struct School {
    string name;
    uint class;
    string sec;
    uint roll;
}

contract Mapping {

    mapping(uint => School) public school;
    
    //Way-1
    function add_1(uint id,
    string memory name,
    uint class,
    string memory sec,
    uint roll) public {

        School memory temp = School({
            name: name, 
            class: class, 
            sec: sec, 
            roll: roll
        });

        school[id] = temp;
    }

    //Way-2
    function add_2(uint id,
    string memory name,
    uint class,
    string memory sec,
    uint roll) public {
        school[id] = School({name: name, 
                            class: class,
                            sec: sec,
                            roll: roll});
    }

    //Way-3
    function add_3(uint id,
    string memory name,
    uint class,
    string memory sec,
    uint roll) public {
        school[id] = School(name, class, sec, roll);
    }

}