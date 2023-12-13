// Headcoins ICO

pragma solidity ^0.8.22;

contract hadcoin_ic {
    
    // Introducing the maximum number of Hacoin available for sale
    uint public max_hadcoins = 1000000;

    // Introducing the USD to Hadcoin conversion rate
    uint public usd_to_hadcoins = 1000;

    //Introducing the total number of Hadcoins that have been bought by investor
    uint public total_hadcoins_bought = 0;

    mapping(address => uint )equity_headcoins;

    mapping(address => uint )equity_usd;
    

    modifier can_buy_hadcoins(uint usd_invested) {
        require(usd_invested * usd_to_hadcoins + total_hadcoins_bought <= max_hadcoins, "Exceeds maximum available Hadcoins");
        _;
    }

    // Getting the equity in Hadcoisn of an investor
    function equity_in_hadcoins(address investor) external view returns (uint) {
        return equity_headcoins[investor];
    }

    function equity_in_usd(address investor) external view returns (uint) {
        return equity_usd[investor];
    }

    // Buyin Hadcoins
    function buy_hadcoins(address investor,uint usd_invested) external 
    can_buy_hadcoins(usd_invested) {
        uint hadcoins_bought = usd_invested * usd_to_hadcoins;

        equity_headcoins[investor] += hadcoins_bought;
        equity_usd[investor] = equity_headcoins[investor] / usd_to_hadcoins;

        total_hadcoins_bought += hadcoins_bought;
    }
    // Selling Hadcoins
    function sell_hadcoins(address investor, uint hadcoins_sold) external 
    {
        equity_headcoins[investor] -= hadcoins_sold;
        equity_usd[investor] = equity_headcoins[investor] / usd_to_hadcoins;

        total_hadcoins_bought -= hadcoins_sold;
    }

}