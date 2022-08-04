pragma solidity ^0.5.0;

contract structExample{

    struct Person{
        string name;
        string gender;
        string birthYear;
        string major;
    }

    Person personObjOne;

    function addData(string memory _name, string memory _gender, string memory _year, 
    string memory _major) public{
        personObjOne.name = _name;
        personObjOne.gender = _gender;
        personObjOne.birthYear = _year;
        personObjOne.major = _major;
    }

    function getName() public view returns(string memory) {
        return personObjOne.name;
    }

    function getGender() public view returns(string memory) {
        return personObjOne.gender;
    }

    function getBirthYear() public view returns(string memory) {
        return personObjOne.birthYear;
    }

    function getMajor() public view returns(string memory) {
        return personObjOne.major;
    }

    mapping(uint => Person) public data;

    function addCNIC(uint _cnic, string memory _name, string memory _gender, 
    string memory _birthYear, string memory _major) public {
        data[_cnic] = Person(_name, _gender, _birthYear, _major);
    }
}