// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract YourContract {
    enum Status {
        Pending,
        Accepted,
        Rejected,
        Canceled
    }
    Status status;
    function get() public view returns(Status) {
        return status;
    }

    function accept() public {
        status = Status.Accepted;
    }

    function reject() public {
        status = Status.Rejected;
    }

    function cancel() public {
        status = Status.Canceled;
    }

    function reset() public {
        delete status;
    }
}
