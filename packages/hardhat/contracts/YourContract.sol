// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract YourContract {
    struct Todo{
        string text;
        bool completed;
    }

    Todo[] public todos;

    function create(string memory _text) public {
        Todo memory todo;
        todo.text = _text;
        todo.completed = false;
        todos.push(todo);
    }

    function toggleCompleted(uint _index) public {
        todos[_index].completed = !todos[_index].completed;
    }
}
