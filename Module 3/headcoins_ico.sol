// Headcoins ICO

pragma solidity ^0.8.22;

contract hadcoin_ic {
    
    // Introducing the maximum number of Hacoin available for sale
    uint public max_hadcoins = 1000000;

    // Introducing the USD to Hadcoin conversion rate
    uint public ud_to_hadcoins = 1000;

    //Introducing the total number of Hadcoins that have been bought by investor
    uint public total_hadcoins_bought = 0;

    mapping(address => uint )equity_headcoins;

    mapping(address => uint )equity_usd;
    

}