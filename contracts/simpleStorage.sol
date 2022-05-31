// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;

contract SimpleStorage {
    // boolean, uint, int, address, bytes, string

    // This gets initialized as 0
    uint256 public favoriteNumber;
    mapping(string => uint256) public nameToFavoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;

    // functions
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    // calldata, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

}

// 0x686c626E48bfC5DC98a30a9992897766fed4Abd3