pragma solidity ^0.5.0;

contract questionFive{
    /*
    Create an escrow application where the user can deposit money to the 
    smart contract, withdraw money from the smart contract to their own 
    account and they should also be able to withdraw money to another 
    account. Your program should also have helper function that displays 
    the amount of money your smart contract has and also another function 
    that displays the amount of money any address has.
    */

    function depositToContract() public payable{}

    function getBalance() public view returns (uint){
        return address(this).balance;
    }

    function withdrawAmount() public payable{
        address payable to = msg.sender;
        to.transfer(this.getBalance());
    }

    function DepositAmount(address payable addressArg) public payable{
        addressArg.transfer(this.getBalance());
    }

    function findBalance(address addressArgTwo) public view returns(uint){
        return addressArgTwo.balance;
    }
}
