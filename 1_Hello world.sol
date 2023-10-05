// SPDX-License-Identifier: GPL 3.0
pragma solidity > 0.4.0 <= 0.9.0;

contract hw
{
    string public message; // state variable
    address public owner;

    // transaction function
    function setMessage(string memory m ) public 
    {
        message = m;
    }

    // pure function
    function test(uint a) public  pure returns (uint ) 
    // external can only be called outside the contract but not in the same contract.
        // cannot be inherited
    // public can be called anywhere in any contract
    // internal can be used in same or child contract
    // private can be called only in same contract
    {
        return a * a; 
    }
    // constructor
    constructor()
    {
        message = "Tasz";
        owner = msg.sender;
    }
    // cant define more than 1 constructor in a contract




}
contract xyz
{
    hw h = new hw();

    function xyz2(uint x) public view returns (uint)
    {
        return h.test(x);
    }
}

// inherited contract. 
contract pqr is xyz
{
    function pqr2(uint y) public view returns (uint)
    {
        return xyz2(y);
    }
}
