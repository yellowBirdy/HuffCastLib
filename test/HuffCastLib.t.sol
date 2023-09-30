// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import {HuffStuff} from "lib/HuffStuff.sol";
import "forge-std/Test.sol";
import "forge-std/console2.sol";
import {SoladyImplementoor} from "src/SoladyImplementoor.sol";

contract HuffCastTest is Test {
    SafeCastLibImplementoor public huffUser;
    SafeCastLibImplementoor public soladyUser;
    /// @dev Setup the testing environment.
    function setUp() public {
        bytes memory contractCode = HuffStuff.compile("src/HuffCastLibImportoor.huff");
        huffUser = SafeCastLibImplementoor(HuffStuff.deploy(contractCode));
        console2.log("===========================================");
        uint size;
        assembly {
            size := extcodesize(sload(huffUser.slot))
        }
        console2.log("HuffCastLibImplementoor codesize: %s", size);


        soladyUser = SafeCastLibImplementoor(address(new SoladyImplementoor()));
    }
    function testUnhappy(uint256 value) public {
        vm.assume(value > 255);
  
        vm.expectRevert(bytes4(0x35278d12));
        soladyUser.toUint8(value);
       // huffUser.toUint8(value);


    }

    /// @dev Ensure that you can set and get the value.
    function testGasHappy(uint256 value) public {
        value = bound(value,0, 256);
        // call all uint function from SafeCastLib on value
        uint256 gasBefore = gasleft();
        //soladyUser.toUint8(value);
        //SafeCastLib.toUint16(value);
        //SafeCastLib.toUint32(value);
        //SafeCastLib.toUint64(value);
        //SafeCastLib.toUint128(value);
        uint256 gasAfter = gasleft();

        console2.log("===========================================");
        console2.log("Solady gas used: ", gasBefore - gasAfter);

        gasBefore = gasleft();
        huffUser.toUint8(value);
        gasAfter = gasleft();

        console2.log("===========================================");
        console2.log("Huff gas used: ", gasBefore - gasAfter);

    }
}


interface SafeCastLibImplementoor {
    function toUint8(uint256 value) external returns (uint8);
    function toUint16(uint256 value) external returns (uint16);
    function toUint32(uint256 value) external returns (uint32);
    function toUint64(uint256 value) external returns (uint64);
    function toUint128(uint256 value) external returns (uint128);

    error Overflow();
}