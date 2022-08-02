pragma solidity ^0.5.0;

contract activityOne {
    uint256 length;
    uint256 width;
    uint256 public Area;
    uint256 public Perimeter;

    function setLength(uint _length) public{
        length = _length;
    }

    function setWidth(uint _width) public{
        width = _width;
    }

    function setArea() public{
        Area =  length * width;
    }

    function setPerimeter() public {
        Perimeter =  (length + width) + (length + width);
    }

    function getArea() public view returns (uint) {
        return Area;
    }

    function getPerimeter() public view returns(uint) {
        return Perimeter;
    }
}
