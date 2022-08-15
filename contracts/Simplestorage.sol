// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract Simplestorage {


    /// Different data types ///
    uint256 public favoriteNum; // This will initialized to 0 in solidity
    // uint256 favouriteNumber = 90;
    // bool favouriteBool = true;
    // string favouriteString = "String";
    // int256 favouriteInte = -5;
    // address favouritAdd = 0xFd983aaB452B26B40AcaCaDa50415878537bbd49;
    // bytes32 favouritBytes = "cat";


    /// Function ///
    function store(uint256 _favNum) public {
        favoriteNum = _favNum;
    }

    /// Examples of view and pure functions ///
        // View: Can read internals of Blockchain but can't change their state
    function retriev() public view returns(uint256){ 
        return favoriteNum;
    }
        // Pure: Can neither read or change in the internals of Blockchain. 
        // Only can do some computations on local variables inside the function 
        // and arguments passed to the function. 
    function retive(uint256 _fn) public pure returns(uint256) { // 
        uint256 favNUM = 10;
        favNUM = favNUM + _fn;
        return (favNUM);
    }

}
