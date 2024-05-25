// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract conversion {
    uint public ethval;

    function setEth(uint _eth) public {
        ethval = _eth;
    }

    function getEth() public view returns(uint) {
        return ethval;
    }

    function getWei() public view returns(uint) {
        return ethval * 1 ether;
    }

    function getGwei() public view returns(uint) {
        return ethval * 1 gwei;
    }
}
