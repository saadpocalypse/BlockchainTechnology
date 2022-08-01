pragma solidity ^0.5.0;

contract divisibilityChecker{
    function twoAndFourDivisibility(uint num) public{
        require(num % 4 == 0, "This number is not divisible by 4!");
        require(num % 2 == 0, "This number is not divisible by 2 and 4!");
        require(num % 2 != 0, "This number is divisible by 2 and 4!");
    }
}
