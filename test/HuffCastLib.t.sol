// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import {HuffStuff} from "lib/HuffStuff.sol";
import "forge-std/Test.sol";
import "forge-std/console2.sol";

import {IHuffCastLibImportoor as SafeCastLibImplementoor} from "src/IHuffCastLibImportoor.sol";

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
    // functions testing happy paths from uint104 up to uint256
    function testHappyToUint104(uint256 value) public {
        vm.assume(value <= type(uint104).max);

        uint104 casted104 = huffUser.toUint104(value);
        assertEq(casted104, value);
        assertLe(casted104, type(uint104).max);

    }
    function testHappyToUint112(uint256 value) public {
        vm.assume(value <= type(uint112).max);

        uint112 casted112 = huffUser.toUint112(value);
        assertEq(casted112, value);
        assertLe(casted112, type(uint112).max);

    }
    function testHappyToUint120(uint256 value) public {
        vm.assume(value <= type(uint120).max);

        uint120 casted120 = huffUser.toUint120(value);
        assertEq(casted120, value);
        assertLe(casted120, type(uint120).max);

    }
    function testHappyToUint128(uint256 value) public {
        vm.assume(value <= type(uint128).max);

        uint128 casted128 = huffUser.toUint128(value);
        assertEq(casted128, value);
        assertLe(casted128, type(uint128).max);

    }
    function testHappyToUint136(uint256 value) public {
        vm.assume(value <= type(uint136).max);

        uint136 casted136 = huffUser.toUint136(value);
        assertEq(casted136, value);
        assertLe(casted136, type(uint136).max);

    }
    function testHappyToUint144(uint256 value) public {
        vm.assume(value <= type(uint144).max);

        uint144 casted144 = huffUser.toUint144(value);
        assertEq(casted144, value);
        assertLe(casted144, type(uint144).max);

    }
    function testHappyToUint152(uint256 value) public {
        vm.assume(value <= type(uint152).max);

        uint152 casted152 = huffUser.toUint152(value);
        assertEq(casted152, value);
        assertLe(casted152, type(uint152).max);

    }
    function testHappyToUint160(uint256 value) public {
        vm.assume(value <= type(uint160).max);

        uint160 casted160 = huffUser.toUint160(value);
        assertEq(casted160, value);
        assertLe(casted160, type(uint160).max);

    }
    function testHappyToUint168(uint256 value) public {
        vm.assume(value <= type(uint168).max);

        uint168 casted168 = huffUser.toUint168(value);
        assertEq(casted168, value);
        assertLe(casted168, type(uint168).max);

    }
    function testHappyToUint176(uint256 value) public {
        vm.assume(value <= type(uint176).max);

        uint176 casted176 = huffUser.toUint176(value);
        assertEq(casted176, value);
        assertLe(casted176, type(uint176).max);

    }
    function testHappyToUint184(uint256 value) public {
        vm.assume(value <= type(uint184).max);

        uint184 casted184 = huffUser.toUint184(value);
        assertEq(casted184, value);
        assertLe(casted184, type(uint184).max);

    }
    function testHappyToUint192(uint256 value) public {
        vm.assume(value <= type(uint192).max);

        uint192 casted192 = huffUser.toUint192(value);
        assertEq(casted192, value);
        assertLe(casted192, type(uint192).max);

    }
    function testHappyToUint200(uint256 value) public {
        vm.assume(value <= type(uint200).max);

        uint200 casted200 = huffUser.toUint200(value);
        assertEq(casted200, value);
        assertLe(casted200, type(uint200).max);

    }
    function testHappyToUint208(uint256 value) public {
        vm.assume(value <= type(uint208).max);

        uint208 casted208 = huffUser.toUint208(value);
        assertEq(casted208, value);
        assertLe(casted208, type(uint208).max);

    }
    function testHappyToUint216(uint256 value) public {
        vm.assume(value <= type(uint216).max);

        uint216 casted216 = huffUser.toUint216(value);
        assertEq(casted216, value);
        assertLe(casted216, type(uint216).max);

    }
    function testHappyToUint224(uint256 value) public {
        vm.assume(value <= type(uint224).max);

        uint224 casted224 = huffUser.toUint224(value);
        assertEq(casted224, value);
        assertLe(casted224, type(uint224).max);

    }
    function testHappyToUint232(uint256 value) public {
        vm.assume(value <= type(uint232).max);

        uint232 casted232 = huffUser.toUint232(value);
        assertEq(casted232, value);
        assertLe(casted232, type(uint232).max);

    }
    function testHappyToUint240(uint256 value) public {
        vm.assume(value <= type(uint240).max);

        uint240 casted240 = huffUser.toUint240(value);
        assertEq(casted240, value);
        assertLe(casted240, type(uint240).max);

    }
    function testHappyToUint248(uint256 value) public {
        vm.assume(value <= type(uint248).max);

        uint248 casted248 = huffUser.toUint248(value);
        assertEq(casted248, value);
        assertLe(casted248, type(uint248).max);

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
    //  testUnhappyToUinX tests from uint104 up to uint256      
    function testUnhappyToUint104(uint256 value) public {

        vm.assume(value > type(uint104).max);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toUint104(value);
    }   
    function testUnhappyToUint112(uint256 value) public {

        vm.assume(value > type(uint112).max);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toUint112(value);
    }
    function testUnhappyToUint120(uint256 value) public {

        vm.assume(value > type(uint120).max);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toUint120(value);
    }
    function testUnhappyToUint128(uint256 value) public {

        vm.assume(value > type(uint128).max);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toUint128(value);
    }
    function testUnhappyToUint136(uint256 value) public {

        vm.assume(value > type(uint136).max);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toUint136(value);
    }
    function testUnhappyToUint144(uint256 value) public {

        vm.assume(value > type(uint144).max);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toUint144(value);
    }
    function testUnhappyToUint152(uint256 value) public {

        vm.assume(value > type(uint152).max);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toUint152(value);
    }
    function testUnhappyToUint160(uint256 value) public {

        vm.assume(value > type(uint160).max);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toUint160(value);
    }
    function testUnhappyToUint168(uint256 value) public {

        vm.assume(value > type(uint168).max);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toUint168(value);
    }
    function testUnhappyToUint176(uint256 value) public {

        vm.assume(value > type(uint176).max);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toUint176(value);
    }
    function testUnhappyToUint184(uint256 value) public {

        vm.assume(value > type(uint184).max);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toUint184(value);
    }
    
    function testUnhappyToUint192(uint256 value) public {

        vm.assume(value > type(uint192).max);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toUint192(value);
    }
    function testUnhappyToUint200(uint256 value) public {

        vm.assume(value > type(uint200).max);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toUint200(value);
    }
    function testUnhappyToUint208(uint256 value) public {

        vm.assume(value > type(uint208).max);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toUint208(value);
    }
    function testUnhappyToUint216(uint256 value) public {

        vm.assume(value > type(uint216).max);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toUint216(value);
    }
    function testUnhappyToUint224(uint256 value) public {

        vm.assume(value > type(uint224).max);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toUint224(value);
    }
    function testUnhappyToUint232(uint256 value) public {

        vm.assume(value > type(uint232).max);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toUint232(value);
    }
    function testUnhappyToUint240(uint256 value) public {

        vm.assume(value > type(uint240).max);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toUint240(value);
    }
    function testUnhappyToUint248(uint256 value) public {

        vm.assume(value > type(uint248).max);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toUint248(value);
    }
 
    function testHappyToInt8(uint256 value) public {
        vm.assume(value <= type(uint8).max/2);
  
        int8 casted8 = huffUser.toInt8(value);
        assertEq(abi.decode(abi.encode(casted8),(uint256)), value);
        assertLe(casted8, type(int8).max);
        assertGe(casted8, 0);
    }
    function testHappyToInt16(uint256 value) public {
        vm.assume(value <= type(uint16).max/2);

        int16 casted16 = huffUser.toInt16(value);
        assertEq(abi.decode(abi.encode(casted16),(uint256)), value);
        assertLe(casted16, type(int16).max);
        assertGe(casted16, 0);
    }
    function testHappyToInt24(uint256 value) public {
        vm.assume(value <= type(uint24).max/2);
  
        int24 casted24 = huffUser.toInt24(value);
        assertEq(abi.decode(abi.encode(casted24),(uint256)), value);
        assertLe(casted24, type(int24).max);
        assertGe(casted24, 0);
    }
    function testHappyToInt32(uint256 value) public {
        vm.assume(value <= type(uint32).max/2);

        int32 casted32 = huffUser.toInt32(value);
        assertEq(abi.decode(abi.encode(casted32),(uint256)), value);
        assertLe(casted32, type(int32).max);
        assertGe(casted32, 0);
    }
    //  testHappyToIntX tests for int40, int64, int72, int80, int96
    function testHappyToInt40(uint256 value) public {
        vm.assume(value <= type(uint40).max/2);

        int40 casted40 = huffUser.toInt40(value);
        assertEq(abi.decode(abi.encode(casted40),(uint256)), value);
        assertLe(casted40, type(int40).max);
        assertGe(casted40, 0);
    }
    function testHappyToInt48(uint256 value) public {
        vm.assume(value <= type(uint48).max/2);

        int48 casted48 = huffUser.toInt48(value);
        assertEq(abi.decode(abi.encode(casted48),(uint256)), value);
        assertLe(casted48, type(int48).max);
        assertGe(casted48, 0);
    }
    function testHappyToInt56(uint256 value) public {
        vm.assume(value <= type(uint56).max/2);

        int56 casted56 = huffUser.toInt56(value);
        assertEq(abi.decode(abi.encode(casted56),(uint256)), value);
        assertLe(casted56, type(int56).max);
        assertGe(casted56, 0);
    }
    function testHappyToInt64(uint256 value) public {
        vm.assume(value <= type(uint64).max/2);

        int64 casted64 = huffUser.toInt64(value);
        assertEq(abi.decode(abi.encode(casted64),(uint256)), value);
        assertLe(casted64, type(int64).max);
        assertGe(casted64, 0);
    }
    function testHappyToInt72(uint256 value) public {
        vm.assume(value <= type(uint72).max/2);

        int72 casted72 = huffUser.toInt72(value);
        assertEq(abi.decode(abi.encode(casted72),(uint256)), value);
        assertLe(casted72, type(int72).max);
        assertGe(casted72, 0);
    }
    function testHappyToInt80(uint256 value) public {
        vm.assume(value <= type(uint80).max/2);

        int80 casted80 = huffUser.toInt80(value);
        assertEq(abi.decode(abi.encode(casted80),(uint256)), value);
        assertLe(casted80, type(int80).max);
        assertGe(casted80, 0);
    }
    function testHappyToInt88(uint256 value) public {
        vm.assume(value <= type(uint88).max/2);

        int88 casted88 = huffUser.toInt88(value);
        assertEq(abi.decode(abi.encode(casted88),(uint256)), value);
        assertLe(casted88, type(int88).max);
        assertGe(casted88, 0);
    }
    function testHappyToInt96(uint256 value) public {
        vm.assume(value <= type(uint96).max/2);

        int96 casted96 = huffUser.toInt96(value);
        assertEq(abi.decode(abi.encode(casted96),(uint256)), value);
        assertLe(casted96, type(int96).max);
        assertGe(casted96, 0);
    }
    function testHappyToInt104(uint256 value) public {
        vm.assume(value <= type(uint104).max/2);

        int104 casted104 = huffUser.toInt104(value);
        assertEq(abi.decode(abi.encode(casted104),(uint256)), value);
        assertLe(casted104, type(int104).max);
        assertGe(casted104, 0);
    }
    function testHappyToInt112(uint256 value) public {
        vm.assume(value <= type(uint112).max/2);

        int112 casted112 = huffUser.toInt112(value);
        assertEq(abi.decode(abi.encode(casted112),(uint256)), value);
        assertLe(casted112, type(int112).max);
        assertGe(casted112, 0);
    }
    function testHappyToInt120(uint256 value) public {
        vm.assume(value <= type(uint120).max/2);

        int120 casted120 = huffUser.toInt120(value);
        assertEq(abi.decode(abi.encode(casted120),(uint256)), value);
        assertLe(casted120, type(int120).max);
        assertGe(casted120, 0);
    }
    function testHappyToInt128(uint256 value) public {
        vm.assume(value <= type(uint128).max/2);

        int128 casted128 = huffUser.toInt128(value);
        assertEq(abi.decode(abi.encode(casted128),(uint256)), value);
        assertLe(casted128, type(int128).max);
        assertGe(casted128, 0);
    }
    function testHappyToInt136(uint256 value) public {
        vm.assume(value <= type(uint136).max/2);

        int136 casted136 = huffUser.toInt136(value);
        assertEq(abi.decode(abi.encode(casted136),(uint256)), value);
        assertLe(casted136, type(int136).max);
        assertGe(casted136, 0);
    }
    function testHappyToInt144(uint256 value) public {
        vm.assume(value <= type(uint144).max/2);

        int144 casted144 = huffUser.toInt144(value);
        assertEq(abi.decode(abi.encode(casted144),(uint256)), value);
        assertLe(casted144, type(int144).max);
        assertGe(casted144, 0);
    }
    function testHappyToInt152(uint256 value) public {
        vm.assume(value <= type(uint152).max/2);

        int152 casted152 = huffUser.toInt152(value);
        assertEq(abi.decode(abi.encode(casted152),(uint256)), value);
        assertLe(casted152, type(int152).max);
        assertGe(casted152, 0);
    }
    function testHappyToInt160(uint256 value) public {
        vm.assume(value <= type(uint160).max/2);

        int160 casted160 = huffUser.toInt160(value);
        assertEq(abi.decode(abi.encode(casted160),(uint256)), value);
        assertLe(casted160, type(int160).max);
        assertGe(casted160, 0);
    }
    function testHappyToInt168(uint256 value) public {
        vm.assume(value <= type(uint168).max/2);

        int168 casted168 = huffUser.toInt168(value);
        assertEq(abi.decode(abi.encode(casted168),(uint256)), value);
        assertLe(casted168, type(int168).max);
        assertGe(casted168, 0);
    }
    function testHappyToInt176(uint256 value) public {
        vm.assume(value <= type(uint176).max/2);

        int176 casted176 = huffUser.toInt176(value);
        assertEq(abi.decode(abi.encode(casted176),(uint256)), value);
        assertLe(casted176, type(int176).max);
        assertGe(casted176, 0);
    }
    function testHappyToInt184(uint256 value) public {
        vm.assume(value <= type(uint184).max/2);

        int184 casted184 = huffUser.toInt184(value);
        assertEq(abi.decode(abi.encode(casted184),(uint256)), value);
        assertLe(casted184, type(int184).max);
        assertGe(casted184, 0);
    }
    function testHappyToInt192(uint256 value) public {
        vm.assume(value <= type(uint192).max/2);

        int192 casted192 = huffUser.toInt192(value);
        assertEq(abi.decode(abi.encode(casted192),(uint256)), value);
        assertLe(casted192, type(int192).max);
        assertGe(casted192, 0);
    }
    function testHappyToInt200(uint256 value) public {
        vm.assume(value <= type(uint200).max/2);

        int200 casted200 = huffUser.toInt200(value);
        assertEq(abi.decode(abi.encode(casted200),(uint256)), value);
        assertLe(casted200, type(int200).max);
        assertGe(casted200, 0);
    }
    function testHappyToInt208(uint256 value) public {
        vm.assume(value <= type(uint208).max/2);

        int208 casted208 = huffUser.toInt208(value);
        assertEq(abi.decode(abi.encode(casted208),(uint256)), value);
        assertLe(casted208, type(int208).max);
        assertGe(casted208, 0);
    }
    function testHappyToInt216(uint256 value) public {
        vm.assume(value <= type(uint216).max/2);

        int216 casted216 = huffUser.toInt216(value);
        assertEq(abi.decode(abi.encode(casted216),(uint256)), value);
        assertLe(casted216, type(int216).max);
        assertGe(casted216, 0);
    }
    function testHappyToInt224(uint256 value) public {
        vm.assume(value <= type(uint224).max/2);

        int224 casted224 = huffUser.toInt224(value);
        assertEq(abi.decode(abi.encode(casted224),(uint256)), value);
        assertLe(casted224, type(int224).max);
        assertGe(casted224, 0);
    }
    function testHappyToInt232(uint256 value) public {
        vm.assume(value <= type(uint232).max/2);

        int232 casted232 = huffUser.toInt232(value);
        assertEq(abi.decode(abi.encode(casted232),(uint256)), value);
        assertLe(casted232, type(int232).max);
        assertGe(casted232, 0);
    }
    function testHappyToInt240(uint256 value) public {
        vm.assume(value <= type(uint240).max/2);

        int240 casted240 = huffUser.toInt240(value);
        assertEq(abi.decode(abi.encode(casted240),(uint256)), value);
        assertLe(casted240, type(int240).max);
        assertGe(casted240, 0);
    }
    function testHappyToInt248(uint256 value) public {
        vm.assume(value <= type(uint248).max/2);

        int248 casted248 = huffUser.toInt248(value);
        assertEq(abi.decode(abi.encode(casted248),(uint256)), value);
        assertLe(casted248, type(int248).max);
        assertGe(casted248, 0);
    }
    function testHappyToInt256(uint256 value) public {
        vm.assume(value <= type(uint256).max/2);

        int256 casted256 = huffUser.toInt256(value);
        assertEq(abi.decode(abi.encode(casted256),(uint256)), value);
        assertLe(casted256, type(int256).max);
        assertGe(casted256, 0);
    }

    // unhappy paths
    function testUnhappyToInt8(uint256 value) public {
        vm.assume(value > type(uint8).max/2);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt8(value);
    }

    function testUnhappyToInt16(uint256 value) public {
        vm.assume(value > type(uint16).max/2);

        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt16(value);
    }
    function testUnhappyToInt24(uint256 value) public {
        vm.assume(value > type(uint24).max/2);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt24(value);
    }
    function testUnhappyToInt32(uint256 value) public {
        vm.assume(value > type(uint32).max/2);

        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt32(value);
    }
    function testUnhappyToInt40(uint256 value) public {
        vm.assume(value > type(uint40).max/2);
  
        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt40(value);
    }
    function testUnhappyToInt48(uint256 value) public {
        vm.assume(value > type(uint48).max/2);

        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt48(value);
    }
    function testUnhappyToInt56(uint256 value) public {
        vm.assume(value > type(uint56).max/2);

        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt56(value);
    }
    function testUnhappyToInt64(uint256 value) public {
        vm.assume(value > type(uint64).max/2);

        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt64(value);
    }
    function testUnhappyToInt72(uint256 value) public {
        vm.assume(value > type(uint72).max/2);

        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt72(value);
    }
    function testUnhappyToInt80(uint256 value) public {
        vm.assume(value > type(uint80).max/2);

        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt80(value);
    }
    function testUnhappyToInt88(uint256 value) public {
        vm.assume(value > type(uint88).max/2);

        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt88(value);
    }
    function testUnhappyToInt96(uint256 value) public {
        vm.assume(value > type(uint96).max/2);

        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt96(value);
    }
    function testUnhappyToInt104(uint256 value) public {
        vm.assume(value > type(uint104).max/2);

        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt104(value);
    }
    function testUnhappyToInt112(uint256 value) public {
        vm.assume(value > type(uint112).max/2);

        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt112(value);
    }   
    function testUnhappyToInt120(uint256 value) public {
        vm.assume(value > type(uint120).max/2);

        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt120(value);
    }
    function testUnhappyToInt128(uint256 value) public {
        vm.assume(value > type(uint128).max/2);

        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt128(value);
    }
    function testUnhappyToInt136(uint256 value) public {
        vm.assume(value > type(uint136).max/2);

        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt136(value);
    }
    function testUnhappyToInt144(uint256 value) public {
        vm.assume(value > type(uint144).max/2);

        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt144(value);
    }
    function testUnhappyToInt152(uint256 value) public {
        vm.assume(value > type(uint152).max/2);

        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt152(value);
    }
    function testUnhappyToInt160(uint256 value) public {
        vm.assume(value > type(uint160).max/2);

        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt160(value);
    }
    function testUnhappyToInt168(uint256 value) public {
        vm.assume(value > type(uint168).max/2);

        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt168(value);
    }
    function testUnhappyToInt176(uint256 value) public {
        vm.assume(value > type(uint176).max/2);

        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt176(value);
    }
    function testUnhappyToInt184(uint256 value) public {
        vm.assume(value > type(uint184).max/2);

        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt184(value);
    }
    function testUnhappyToInt192(uint256 value) public {
        vm.assume(value > type(uint192).max/2);

        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt192(value);
    }
    function testUnhappyToInt200(uint256 value) public {
        vm.assume(value > type(uint200).max/2);

        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt200(value);
    }
    function testUnhappyToInt208(uint256 value) public {
        vm.assume(value > type(uint208).max/2);

        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt208(value);
    }
    function testUnhappyToInt216(uint256 value) public {
        vm.assume(value > type(uint216).max/2);

        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt216(value);
    }
    function testUnhappyToInt224(uint256 value) public {
        vm.assume(value > type(uint224).max/2);

        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt224(value);
    }
    function testUnhappyToInt232(uint256 value) public {
        vm.assume(value > type(uint232).max/2);

        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt232(value);
    }
    function testUnhappyToInt240(uint256 value) public {
        vm.assume(value > type(uint240).max/2);

        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt240(value);
    }
    function testUnhappyToInt248(uint256 value) public {
        vm.assume(value > type(uint248).max/2);

        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt248(value);
    }
    function testUnhappyToInt256(uint256 value) public {
        vm.assume(value > type(uint256).max/2);

        vm.expectRevert(SafeCastLibImplementoor.Overflow.selector);  //  Overflow() selector
        huffUser.toInt256(value);
    }
}

