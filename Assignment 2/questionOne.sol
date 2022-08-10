pragma solidity ^0.5.0;
// Ahmad Saad, 231461463, Assignment 2
// 0xD48d8EA5A1CDd1570e08713cfb736ec358E63E70

contract questionOne{

    address owner;
    address[] instructorList;
    enum Status{active, nonActive}


    /* purpose: This function just assigns the address
    of the account that launched the contract to the 
    variable 'owner'.

    Input params: Takes no inputs

    Returns: Returns nothing.
    */
    constructor () public {
        owner = msg.sender;
    }


    /* purpose: Struct of type Instructor, I use string for all
    attributes and an int value for status in accordance to
    the enum.

    Input params: Takes no inputs

    Returns: Returns nothing.
    */
    struct Instructor{
        string firstName;
        string lastName;
        string officeNumber;
        string phoneNumber;
        string domain;
        Status status;
    }


    /* purpose: Maps the an instance of struct Instructor to an address.

    Input params: Takes no inputs

    Returns: Returns nothing.
    */
    mapping(address => Instructor) public data;


    /* purpose: Creates an instance of struct Instructor.

    Input params: Takes all attributes of struct Instructor as input.

    Returns: Returns nothing.
    */
    function addData(address _address, string memory _firstName, string memory _lastName, 
    string memory _officeNumber, string memory _phoneNumber, string memory _domain, 
    Status _status) public{
        require(msg.sender == owner, "Only the owner has this privilige!");
        data[_address] = Instructor(_firstName, _lastName, _officeNumber, _phoneNumber, 
        _domain, _status);
        instructorList.push(_address);
    }


    /* purpose: This function just alters the status attribute
    of an instance of Instructor struct.

    Input params: Takes address and an integer as the status value for inputs.

    Returns: Returns nothing.
    */
    function setActiveStatus(address _address, Status _status) public{
        require(msg.sender == owner, "Only the owner has this privilige!");
        data[_address].status = _status;
    }


    /* purpose: This function returns all the information about
    an instance of struct Instructor.

    Input params: Takes address as input.

    Returns: Returns information of the instance of struct Instructor.
    */
    function getData(address _address) public view returns(string memory, string memory, string memory, 
    string memory, string memory, Status){
        return (data[_address].firstName, data[_address].lastName, data[_address].officeNumber, 
        data[_address].phoneNumber, data[_address].domain, data[_address].status);
    }


    /* purpose: This function is used to see how
    many instructor are in the system.

    Input params: Takes no inputs.

    Returns: Returns total number of instructors.
    */
    function getCount() public view returns(uint){
        require(msg.sender == owner, "Only the owner has this privilige!");
        return (instructorList.length);
    }


    /* purpose: This function returns all the information about
    an instances of struct Instructor.

    Input params: Takes no input.

    Returns: Returns information of all the instances of struct Instructor.
    */
    function getInstructorInfo() public view returns(address[] memory){
        require(msg.sender == owner, "Only the owner has this privilige!");
        return(instructorList);
    }
} 