pragma solidity ^0.5.0;
// 0xc90F38aCf122eEc2E91775Abb02f41b8244f915b
// Ahmad Saad, 231461463, Assignment Two

contract shortQuestions{

    uint totalAmount;
    uint billToPay;
    bytes stringOne = "adieu ouije louie";
    uint vowelCount;
    bool paused = true;


    /* purpose: This function accepts an input from user for the 
    amount.

    Input params: Amount of money, an integer value.

    Returns: Returns nothing
    */
    function amountFromUser(uint amount) public{
        totalAmount = amount;
    }


    /* purpose: This function calculates the bill based on the amount.

    Input params: No input required.

    Returns: Returns nothing.
    */
    function calculateBill() public{
        for(uint counter = 0; counter < totalAmount; counter++){
            if (counter > 100 && counter < 201){
                billToPay = billToPay + 5;
            }
            if (counter >= 201){
                billToPay = billToPay + 10;
            }
        }
    }

    /* purpose: This function returns the bill.

    Input params: No input required.

    Returns: Returns an integer value, the total bill.
    */
    function getBill() public view returns(uint){
        return billToPay;
    }


    /* purpose: This function calculates the total number of vowels in the string.
    If there is a capital vowel, the vowel count is reset, contract is paused and
    the loop breaks.

    Input params: No input required.

    Returns: Returns nothing.
    */
    function calculateVowels() public{
        require(paused == true, "The function is paused!");
        for(uint counter = 0; counter < stringOne.length; counter++){
            if(stringOne[counter] == "A" || stringOne[counter] == "E" 
            || stringOne[counter] == "I" || stringOne[counter] == "O" 
            || stringOne[counter] == "U"){
                paused = false;
                vowelCount = 0;
                break;
            }
            else if(stringOne[counter] == "a" || stringOne[counter] == "e" 
            || stringOne[counter] == "i" || stringOne[counter] == "o" 
            || stringOne[counter] == "u"){
                vowelCount++;
            }
        }
    }


    /* purpose: This function is to pause or unpause the contract.

    Input params: Requires a boolean for the pause status of the contract.

    Returns: Returns nothing.
    */
    function setPaused(bool _paused) public {
        paused = _paused;
    }


    /* purpose: This function returns the total number of vowels in the string.

    Input params: No input required.

    Returns: Returns the number of vowels.
    */
    function returnVowelCount() public view returns(uint){
        return vowelCount;
    }
}