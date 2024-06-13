// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract MyToken {

    string public tokenName = "mytoken";
    string public tokenAbbrv = "token";
    uint public totalToken = 0;

    mapping (address => uint) public balances;

    function mint(address _address, uint value) public {
        balances[_address] += value;
        totalToken += value;
    }

    function burn(address _address, uint value) public {
        require(balances[_address] >= value, "Insufficient balance to burn");
        balances[_address] -= value;
        totalToken -= value;
    }
}
