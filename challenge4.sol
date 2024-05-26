// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

//Write a Solidity contract with 4 functions; add, subtract, multiply and divide 2 numbers.

contract testFunctions {
    function add(uint x, uint y) external pure returns(uint) {
        return x + y;
    }
    function sub(uint x, uint y) external pure returns(uint) {
        return x - y;
    }
    function mul(uint x, uint y) external pure returns(uint) {
        return x * y;
    }
    function divide(uint x, uint y) external pure returns(uint) {
        return x / y;
    }
}
