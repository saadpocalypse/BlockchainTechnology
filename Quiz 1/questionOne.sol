pragma solidity ^0.5.0;

pragma solidity ^0.5.0;

contract questionOne{

    uint empoyeeCount;

    struct HBLEmployee{
        string name;
        string designation;
        string branch;
        bool status;
        string phoneNumber;
    }

    mapping(uint => HBLEmployee) data;

    function addEmployee(uint _CNIC, string memory _name, string memory _designation, 
    string memory _branch, bool _status, string memory _phoneNumber) public{
        data[_CNIC] = HBLEmployee(_name, _designation, _branch, _status, _phoneNumber);
        empoyeeCount++;
    }

    function getData(uint _CNIC) public view returns(string memory, string memory, 
    string memory, bool, string memory){
        return (data[_CNIC].name, data[_CNIC].designation, data[_CNIC].branch, data[_CNIC].status, 
        data[_CNIC].phoneNumber);
    }

    function returnCount() public view returns(uint){
        return(empoyeeCount);
    }
}
