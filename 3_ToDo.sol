// SPDX-License-Identifier: GPL 3.0
pragma solidity > 0.4.0 <= 0.9.0;

contract ToDo 
{
    struct task
    {
        bool iscomplete;
        string description;
    }

    mapping(address => task[]) private users;

    function addTask(string calldata _description) external 
    {
        users[msg.sender].push(task
        (
            {
            iscomplete : false, 
            description : _description
            }
        )
        );
    } 

    function getCount() external view returns (uint)
    {
        return users[msg.sender].length;
    } 

    function deleteTask(uint id) external 
    {
        delete users[msg.sender][id];
    } 
}
