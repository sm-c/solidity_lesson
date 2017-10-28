pragma solidity ^0.4.13;

contract SimpleTokenCoin {
    
    string public constant name = "Simple Coint Token";
    
    string public constant symbol = "SCT";
    
    uint32 public constant decimals = 18;
    
    uint public totalSupply = 0;
    
    mapping (address => uint) balances;
    
    function balanceOf(address _owner) constant returns (uint balance) {
        return balances[_owner];
    }

    function transfer(address _to, uint _value) returns (bool success) {
        balances[msg.sender] -= _value; 
        balances[_to] += _value;
        Transfer(msg.sender, _to, _value);
        return true;
    }
    
    function transferFrom(address _from, address _to, uint _value) returns (bool success) {
        return true; 
    }
    
    function approve(address _spender, uint _value) returns (bool success) {
        return false;
    }
    
    function allowance(address _owner, address _spender) constant returns (uint remaining) {
        return 0;
    }
    
    event Transfer(address indexed _from, address indexed _to, uint _value);
    
    event Approval(address indexed _owner, address indexed _spender, uint _value);
    
}