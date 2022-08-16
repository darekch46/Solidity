//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract FundMe {

    uint256 public minimumUsd = 50;

    function fund() public payable {
        require(msg.value > 1e18, "Didn't send enough!");
    }

    function getPrice() public view returns(uint256) {
        //ABI
        //Address 0x5f4ec3df9cbd43714fe2740f5e3616155c5b8419
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x5f4ec3df9cbd43714fe2740f5e3616155c5b8419);
        (,int256 price,,,) = priceFeed.latestRoundData();
        return uint256(price * 1e10); 
    }


    function getConversionRate() public {}
}