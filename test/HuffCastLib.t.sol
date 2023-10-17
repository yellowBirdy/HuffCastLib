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
       function testHappyToUint24(uint256 value) public {
        vm.assume(value <= type(uint24).max);
  
        uint24 casted24 = huffUser.toUint24(value);
        assertEq(casted24, value);
        assertLe(casted24, type(uint24).max);
    }
    function testHappyToUin32(uint256 value) public {
        vm.assume(value <= type(uint32).max);

        uint32 casted32 = huffUser.toUint32(value);
        assertEq(casted32, value);
        assertLe(casted32, type(uint32).max);

    }
    // write testHappyToUinX tests for uint40, uint64, uint72, uint80, uint96
    function testHappyToUint40(uint256 value) public {
        vm.assume(value <= type(uint40).max);
  
        uint40 casted40 = huffUser.toUint40(value);
        assertEq(casted40, value);
        assertLe(casted40, type(uint40).max);
    }
    function testHappyToUint48(uint256 value) public {
        vm.assume(value <= type(uint48).max);

        uint48 casted48 = huffUser.toUint48(value);
        assertEq(casted48, value);
        assertLe(casted48, type(uint48).max);

    }
    function testHappyToUint56(uint256 value) public {
        vm.assume(value <= type(uint56).max);

        uint56 casted56 = huffUser.toUint56(value);
        assertEq(casted56, value);
        assertLe(casted56, type(uint56).max);

    }

    function testHappyToUint64(uint256 value) public {
        vm.assume(value <= type(uint64).max);

        uint64 casted64 = huffUser.toUint64(value);
        assertEq(casted64, value);
        assertLe(casted64, type(uint64).max);

    }
    function testHappyToUint72(uint256 value) public {
        vm.assume(value <= type(uint72).max);

        uint72 casted72 = huffUser.toUint72(value);
        assertEq(casted72, value);
        assertLe(casted72, type(uint72).max);

    }
    function testHappyToUint80(uint256 value) public {
        vm.assume(value <= type(uint80).max);

        uint80 casted80 = huffUser.toUint80(value);
        assertEq(casted80, value);
        assertLe(casted80, type(uint80).max);

    }
    function testHappyToUint88(uint256 value) public {
        vm.assume(value <= type(uint88).max);

        uint88 casted88 = huffUser.toUint88(value);
        assertEq(casted88, value);
        assertLe(casted88, type(uint88).max);

    }
    function testHappyToUint96(uint256 value) public {
        vm.assume(value <= type(uint96).max);

        uint96 casted96 = huffUser.toUint96(value);
        assertEq(casted96, value);
        assertLe(casted96, type(uint96).max);

    }
    function testUnhappyToUint8(uint256 value) public {
        vm.assume(value > type(uint8).max);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toUint8(value);
    }
    function testUnhappyToUint16(uint256 value) public {

        vm.assume(value > type(uint16).max);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toUint16(value);
    }
    function testUnhappyToUint24(uint256 value) public {
        vm.assume(value > type(uint24).max);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toUint24(value);
    }
    function testUnhappyToUint32(uint256 value) public {

        vm.assume(value > type(uint32).max);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toUint32(value);
    }
    //  testUnhappyToUinX tests for uint40, uint64, uint72, uint80, uint96
    function testUnhappyToUint40(uint256 value) public {
        vm.assume(value > type(uint40).max);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toUint40(value);
    }
    function testUnhappyToUint48(uint256 value) public {

        vm.assume(value > type(uint48).max);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toUint48(value);
    }
    function testUnhappyToUint56(uint256 value) public {

        vm.assume(value > type(uint56).max);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toUint56(value);
    }
    function testUnhappyToUint64(uint256 value) public {

        vm.assume(value > type(uint64).max);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toUint64(value);
    }
    function testUnhappyToUint72(uint256 value) public {

        vm.assume(value > type(uint72).max);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toUint72(value);
    }
    function testUnhappyToUint80(uint256 value) public {

        vm.assume(value > type(uint80).max);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toUint80(value);
    }
    function testUnhappyToUint88(uint256 value) public {

        vm.assume(value > type(uint88).max);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toUint88(value);
    }
    function testUnhappyToUint96(uint256 value) public {

        vm.assume(value > type(uint96).max);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toUint96(value);
    }
    
 
}


interface SafeCastLibImplementoor {
    function toUint8(uint256 value) external returns (uint8);
    function toUint16(uint256 value) external returns (uint16);
    function toUint24(uint256 value) external returns (uint24);
    function toUint32(uint256 value) external returns (uint32);
    function toUint40(uint256 value) external returns (uint40);
    function toUint48(uint256 value) external returns (uint48);
    function toUint56(uint256 value) external returns (uint56);
    function toUint64(uint256 value) external returns (uint64);
    function toUint72(uint256 value) external returns (uint72);
    function toUint80(uint256 value) external returns (uint80);
    function toUint88(uint256 value) external returns (uint88);
    function toUint96(uint256 value) external returns (uint96);
    function toUint128(uint256 value) external returns (uint128);

    error Overflow();
}