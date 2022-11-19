// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract YourContract {
    uint public result_i;
    uint public result_j;
    function loop() public {
        uint i;
        uint j;
        for ( i = 0; i < 10; i++) {
            if (i == 3) {
                // Skip to next iteration with continue
                continue;
            }
            if (i == 5) {
                // Exit loop with break
                break;
            }
        }

        while (j < 10) {
            j++;
        }
        result_i = i;
        result_j = j;
    }
}
