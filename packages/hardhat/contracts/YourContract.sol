// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract YourContract {
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }
    Status status;

    function getStatus() public view returns (Status) {
        return status;
    }

    function cancel() public {
        status = Status.Canceled;
    }

    function rejected() public {
        status = Status.Rejected;
    }

    function reset() public {
        delete status;
    }
}
