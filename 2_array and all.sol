// SPDX-License-Identifier: GPL 3.0
pragma solidity > 0.4.0 <= 0.9.0;

struct employee
{
    uint id;
    string name;
    string gender;
}

contract learnarray
{
    /* //static array
    uint [10] public num;
    uint i;
    
    function initializeArray() public 
    {
        do 
        {
            num[i] = i * i;
            i++;
        } while (i < 10);
    }
    */

    // dynamic array
    uint [] public num;
    uint i;
    function initializeArray() public 
    {
        i++; 
        num.push(i);
    }

    employee public e; //made a public variable using datatype employee
    function setEmployee(uint a, string memory n, string memory g) public
    {
        e.id = a;
        e.name = n;
        e.gender = g;
    }
}
