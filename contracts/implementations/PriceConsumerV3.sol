// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../interfaces/AggregatorV3Interface.sol";

contract PriceConsumerV3 {

    AggregatorV3Interface internal priceFeed;

    /**
     * Network: Matic
     * Aggregator: ETH/USD
     * Address: 0x0715A7794a1dc8e42615F059dD6e406A6594651A
     */
    constructor() {
        priceFeed = AggregatorV3Interface(0x0715A7794a1dc8e42615F059dD6e406A6594651A);
    }

    /**
     * Returns the latest price
     */
    function getLatestPrice() public view returns (int) {
        (
            uint80 roundID, 
            int price,
            uint startedAt,
            uint timeStamp,
            uint80 answeredInRound
        ) = priceFeed.latestRoundData();
        return price;
    }
}