// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; // stating our versions

contract SimpleStorage{

    uint256  FavoriteNumber;

   // uint256[] listofFavoriteNumbers;

    struct Person
    {
        uint256 favNumber;
        string Name;
    }
    
    // Dynamic Array
    Person[] public ListOfPeople;
    
    mapping (string => uint256) public nameToFavoriteNumber;


    function store(uint256 number) public virtual  
    {
        FavoriteNumber = number;
       // retrieve();
    }
    
    function retrieve() public view returns (uint256)
    {
        return  FavoriteNumber;
    }

    function AddPerson(uint256 Number, string memory name) public 
    {
        // Person memory newPerson = Person(Number,name);
        // ListOfPeople.push(newPerson);

        ListOfPeople.push(Person(Number,name));
        nameToFavoriteNumber[name] = Number;
    } 
}

// view - read state from blockchain, diallows modification of state
// pure - disallow updating state and even read reading from state or storage
// they are used for function calling and no transaction takes place
// Calling a view or pure function actually does cost gas only when a gas costs transaction is calling it 


// if you create any variable outside of any function inside of a contract it will automatically be converted to storage variable