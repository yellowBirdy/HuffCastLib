// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Vm} from "forge-std/Vm.sol";

library HuffStuff {
    Vm private constant VM = Vm(address(uint160(uint256(keccak256("hevm cheat code")))));

    function compile(string memory filePath) internal returns (bytes memory) {
        string[] memory args = new string[](3);
        args[0] = "huffc";
        args[1] = filePath;
        args[2] = "--bytecode";
        return VM.ffi(args);
    }

    function deploy(bytes memory bytecode) internal returns (address deployment) {
        assembly {
            deployment := create(0, add(bytecode, 32), mload(bytecode))
        }
        require(deployment != address(0), "fail deployment");
    }
}


