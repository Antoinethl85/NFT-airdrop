pragma solidity ^0.8.6;

contract MasterBox {

    constructor () public{}

    struct User {
        address address_user;
        uint256 random_number;
    }

    uint256 box = 1000;
    uint256 box_open = 0;
    User[] private users;

    function fill_table (address _address_user, uint256 _random_number) public{
        do {
            User memory newUser = User(_address_user, _random_number);
            users.push(newUser);
            box_open++;
        }
        while (box_open != box);
    }
    
}