// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract challenge {
    uint public var1;
    uint public var2;
    uint public var3;
    uint public var4;

    function setNumber(uint _var1, uint _var2, uint _var3, uint _var4) public {
        var1 = _var1;
        var2 = _var2;
        var3 = _var3;
        var4 = _var4;
    }

    function getNumber1() public view returns(uint) {
        return var1;
    }
    function getNumber2() public view returns(uint) {
        return var2;
    }
    function getNumber3() public view returns(uint) {
        return var3;
    }
    function getNumber4() public view returns(uint) {
        return var4;
    }
}
