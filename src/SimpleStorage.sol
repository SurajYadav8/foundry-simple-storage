// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleStorage{

    uint256 myFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listofPerson;

    mapping (string => uint256) public Community;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }
    function retrieve () public view returns(uint256){
        return myFavoriteNumber;
    }
    function addPerson (string memory _name, uint256 _favoriteNumber) public {
        listofPerson.push(Person(_favoriteNumber, _name));
        Community[_name] = _favoriteNumber;
    }
}