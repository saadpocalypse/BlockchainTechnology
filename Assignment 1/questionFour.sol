pragma solidity ^0.5.0;

contract questionFour{
    uint256 public calcSum;
    uint256 public calcDif;
    uint256 public calcProd;
    uint256 public calcDiv;

    /*
    Create a simple calculator which takes 2 numbers as inputs and then 
    calculates addition, subtraction, multiplication, and division 
    in different functions.
    */

    // Addition
    function addition(uint inputOne, uint inputTwo) public{
        calcSum = inputOne + inputTwo;
    }

    // Subtraction
    function subtraction(uint inputOne, uint inputTwo) public{
        calcDif =  inputOne - inputTwo;
    }

    // Multiplication
    function multiplication(uint inputOne, uint inputTwo) public{
        calcProd = inputOne * inputTwo;
    }

    // Division
    function division(uint inputOne, uint inputTwo) public{
        calcDiv =  inputOne / inputTwo;
    }
}
