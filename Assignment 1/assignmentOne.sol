pragma solidity ^0.5.0;

contract assignmentOne {
    uint256 public average;
    uint256 public metricBMI;
    uint256 public imperialBMI;
    address public deployerAccount;

    /*
    Q1) Write a function which takes 5 numbers and returns their average.
    */
    function calculateAverage(uint One, uint Two, uint Three, uint Four, uint Five) public{
        average = (One + Two + Three + Four + Five) / 5;
    }


    /* 
    Q2) Write 2 functons to calculate BMI (Body-mass index) using 
    both formulas (2 separate functions).
    */

    // Function 1 (Metric Units)
    function metricBMIClaculator(uint weight, uint height) public{
        metricBMI = weight / (height ** 2);
    }

    // Function 2 (Imperial system)
    function imperialBMICalculator(uint weight, uint height) public{
        imperialBMI = 703 * weight / (height ** 2);
    }

    /*
    Q3) Write a function which returns the address of the account 
    that deployed the contract.
    */

    // First we use a setter function to set the address
    constructor() public{
        deployerAccount = msg.sender;
    }

    // Then we retrieve the address
    function getAddress() public view returns (address){    
        return deployerAccount;
    }
}
