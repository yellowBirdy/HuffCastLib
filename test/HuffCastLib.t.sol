// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import {HuffStuff} from "lib/HuffStuff.sol";
import "forge-std/Test.sol";
import "forge-std/console2.sol";

contract HuffCastTest is Test {
    SafeCastLibImplementoor public huffUser;
    /// @dev Setup the testing environment.
    function setUp() public {
        bytes memory contractCode = HuffStuff.compile("src/HuffCastLibImportoor.huff");
        huffUser = SafeCastLibImplementoor(HuffStuff.deploy(contractCode));

    }

    function testHappyToUint8(uint256 value) public {
        vm.assume(value <= type(uint8).max);
  
        uint8 casted8 = huffUser.toUint8(value);
        assertEq(casted8, value);
        assertLe(casted8, type(uint8).max);
    }
    function testHappyToUint16(uint256 value) public {
        vm.assume(value <= type(uint16).max);

        uint16 casted16 = huffUser.toUint16(value);
        assertEq(casted16, value);
        assertLe(casted16, type(uint16).max);

    }
    function testUnhappyToUint8(uint256 value) public {
        vm.assume(value > type(uint8).max);
  
        vm.expectRevert(bytes4(0x35278d12));  //  Overflow() selector
        huffUser.toUint8(value);
    }
    function testUnhappyToUint16(uint256 value) public {

        vm.assume(value > type(uint16).max);
  
        vm.expectRevert(bytes4(0x35278d12));  //  Overflow() selector
        huffUser.toUint16(value);

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