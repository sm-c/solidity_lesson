contract Crowdsale {
    
    address owner;
    
    SimpleTokenCoin public token = new SimpleTokenCoin();
    
    uint start = 1508976000; //26.10.2017 00:00:00
    
    uint period = 28;
    
    function Crowdsale() {
        owner = msg.sender;
    }
    
    function() external payable {
        require(now > start && now < start + period*24*60*60);
        owner.transfer(msg.value);
        token.mint(msg.sender, msg.value);
    }
    
}
