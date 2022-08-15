// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract Simplestorage {


    /// Different data types ///

    // In general, declaration is done using following syntax
    // type [access] name

    uint256 public favoriteNum; // This will initialized to 0 in solidity
    // uint256 favouriteNumber = 90;
    // bool favouriteBool = true;
    // string favouriteString = "String";
    // int256 favouriteInte = -5;
    // address favouritAdd = 0xFd983aaB452B26B40AcaCaDa50415878537bbd49;
    // bytes32 favouritBytes = "cat";

    struct People{
        uint256 favNUM;
        string  name;
    }

    People public person = People({favNUM: 2, name:"Patric"});

    People[] public people; // Dynamic Array
    People[1] public people_single; // Static Array

    mapping(string => uint256) public nameToFavNUM;


    /// Functions ///
    function store(uint256 _favNum) public {
        favoriteNum = _favNum;
    }

    /// Examples of view and pure functions ///
        // View: Can read internals of Blockchain but can't change their state
    function retrieve_view() public view returns(uint256){ 
        return favoriteNum;
    }
        // Pure: Can neither read or change in the internals of Blockchain. 
        // Only can do some computations on local variables inside the function 
        // and arguments passed to the function. 
    function retrieve_pure(uint256 _fn) public pure returns(uint256) { // 
        uint256 favNUM = 10;
        favNUM = favNUM + _fn;
        return (favNUM);
    }

    // Adding data to dynamic array of structs
    // memory --> stored and accessible during the function call or contract
    // storage --> stored and accessible even after the function call or contract
    // String --> is object -> an array of bytes
    function addPerson(uint256 _fn, string memory _nm) public {
        //people.push(People({favNUM: _fn, name: _nm}));
        // Same as above. _fn is allocated to variable at index 0 (favNUM) and _nm will be allocated
        // to variable at index 1 (name).
        people.push(People(_fn, _nm));   
        nameToFavNUM[_nm] = _fn;
    }

}