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

    function testHhappy(uint256 value) public {
        vm.assume(value < 256);
  
        uint8 casted = huffUser.toUint8(value);
        assertEq(casted, value);
        assertLt(casted, type(uint8).max);

    }
    function testUnhappy(uint256 value) public {
        vm.assume(value > 255);
  
        vm.expectRevert(bytes4(0x35278d12));
        huffUser.toUint8(value);

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