// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "./Simplestorage.sol";  // Importing another contract

contract StorageFactory{

    Simplestorage[] public simpleStorageArray;

    function createSimplestorageContract() public {
        Simplestorage simpleStorage = new Simplestorage(); // creates a new contract with an address
        simpleStorageArray.push(simpleStorage); // adds a new contract to array 
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public{
        // address of the contract
        // ABI of the contract (Application Binary Interface)
        Simplestorage simpleStorage = Simplestorage(address(simpleStorageArray[_simpleStorageIndex]));
        simpleStorage.store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        Simplestorage simpleStorage = Simplestorage(address(simpleStorageArray[_simpleStorageIndex]));
        return simpleStorage.retrieve_view();
    }
}
