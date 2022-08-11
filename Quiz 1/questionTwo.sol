pragma solidity 0.6.6;

contract questionTwo{
	mapping(address => uint) public tokenBalance;
	event TokenSent(address _from, address _to, uint _amount);

constructor() public {
	tokenBalance[msg.sender] = 100;
}

function makeFriendsRich() public{
    sendToken(0xB47C36153D4E58C6A0450f49f6c864D86023c141, 1);
    sendToken(0x844B6fBf8FBC5A0c787Cb000adc56D541EdF1839, 1);
    sendToken(0x25F9f7e2a8A81579EE54DD9b3356B043Dd0019f6, 1);
    sendToken(0xcD6C8184AF7415369Af3552cd1a1521dcD4c421d, 1);
    sendToken(0xBa91Fa37c9FBE856229f42F16Fa0b88C639c5389, 1);
}

function sendToken(address _to, uint _amount) public returns (bool) {
    tokenBalance[msg.sender] -= _amount;
    tokenBalance[_to] += _amount;
    emit TokenSent(msg.sender, _to, _amount);
	return true;
    }
}
