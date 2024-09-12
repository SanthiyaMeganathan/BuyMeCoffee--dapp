// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract BuyMeACoffee {
    //event emit when the memo is created
    event Newmemo(
        address indexed from,
        uint256 timestamp,
        string name,
        string message
    );

    //Memo struct

    struct Memo {
        address from;
        uint256 timestamp;
        string name;
        string message;
    }
    //list of all memos received from friends.

    //list of structs

    Memo[] memos;

    //address of contract deployer.abi
    address payable owner;

    //constructore
    //there will be only one constructor which will be deployed only one.abi
    constructor() {
        owner = payable(msg.sender);
    }


    //buycoffee function to buy a cofeee

    /*
    @dev buy a coffee for the contract owner
    @param _name name of the coffee  buyer 
    @param _message a nice message from the coffee buyer
     */

    function buyCoffee(string memory _name, string memory _message) public payable {
        //if you want to buy a coffee yo should pay more than 0 eth

        require(msg.value>0,"can not buy a coffee with 0 eth ")

      //here we are creating the memos using the struct template and pushing all the memos into the list that we craeted memos.abi
      
       memos( Memo(
            msg.sender,
            block.timestamp,
            _name,
            _message
        ));
    }


}
