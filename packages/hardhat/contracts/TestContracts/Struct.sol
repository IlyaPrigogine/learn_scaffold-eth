// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract YourContract {
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] todos;
    function get(uint _index) public view returns(string memory text, bool completed) {
        return (todos[_index].text, todos[_index].completed);
    }

    function getArr() public view returns(Todo[] memory) {
        return todos;
    }

    function create(string calldata _text) public {
        Todo memory todo;
        todo.text = _text;
        todos.push(todo);
    }

    function toggleCompleted(uint _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
}
