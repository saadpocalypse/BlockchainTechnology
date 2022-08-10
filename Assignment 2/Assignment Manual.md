# Assignment 2

## Instructions:
You can test the smart contract on Remix VM, however, you must deploy the final contract on Rinkeby or Goerli test network. Moreover, after deploying the contract, you should copy the address of the contract and paste it in the top most line of your contract in a comment and submit the file on Moodle before the deadline. <br>

You must add 5 instructors in the blockchain after deploying the contract on the test network. You can add multiple accounts on Metamask through settings. <br>

You must also write the docstring for all your functions in the following format:

```
/* 
Purpose: 

Input:

Parameters: 

Returns: 	
*/
```

## Question 1
Create a smart contract that allows you to store data of multiple instructors, along with the option of retrieving the data associated with them based on their account address. <br>

### Instructions:
1. You are required to store the details of multiple instructs in blockchain. You must use the following information about the instructor: <br>

First_name, Last_name, Office_number, Phone_number, and domain(ex Computer Science, Mathematics, Physics) with the use of Struct, and Mapping.

2. The instructor should also have a predefined status of “Active/non-active”.

3. The primary key for mapping should be the account address of the instructor.

4. Only the owner of the smart contract should be able to add the instructors in the blockchain and claim whether an instructor is active or not.

5. Also, keep count of the total number of instructors added.

6. Create a getter function that returns the details of the instructors from a particular address.

7. Create a getter function that returns the number of instructor. However, only owner should be able to do that.

8. Create a function that will return the addresses of all the instructors. However, if someone other than the owner calls the function, the smart contract must be destroyed. Otherwise, it should return the address.
