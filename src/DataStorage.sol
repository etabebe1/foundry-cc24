// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract DataStorage {
    uint256 public myNumber;

    struct UserData {
        uint256 usernumber;
        string username; 
    }

    UserData[] public userDataArray;

    mapping (string => uint256) public usernameToUsernumber;

    function addUser(uint256 _usernumber, string memory _username) public  { 
        userDataArray.push(UserData(_usernumber,  _username));
        usernameToUsernumber[_username] = _usernumber;
    }

    function storeNumber (uint256 _number) public virtual  {
        myNumber = _number;
    }

    function getNumber () public view returns(uint256) {
        return myNumber;
    }
}