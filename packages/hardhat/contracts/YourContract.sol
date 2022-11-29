// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract YourContract {
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] todos;
    /* public functions*/
    function create(string memory _text) public {
        Todo memory todo;
        todo.text = _text;
        todos.push(todo);
    }

    function toggleCompleted(uint _index) public {
        todos[_index].completed = !todos[_index].completed;
    }

    /* views */
    function get(uint _index) public view returns(Todo memory) {
        return todos[_index];
    }

    function getLength() public view returns(uint) {
        return todos.length;
    }
}
