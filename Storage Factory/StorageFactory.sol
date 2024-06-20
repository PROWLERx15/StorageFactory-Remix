// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory
{
    // uint256 public favoritenumber
    // type visiblity name
    SimpleStorage[] public  ListOfSimpleStorageContracts;

    function CreateSimpleStorageContract() public 
    {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        ListOfSimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simplestorageIndex, uint256 simplestorageNumber) public 
    {
        // Address
        // ABI - Application Binary Interface
        ListOfSimpleStorageContracts[_simplestorageIndex].store(simplestorageNumber);
    }
    
    function sfGet(uint256 _simplestorageIndex) public view returns(uint256)
    {
        SimpleStorage mySimpleStorage = ListOfSimpleStorageContracts[_simplestorageIndex];
        return mySimpleStorage.retrieve(); 
    }
}