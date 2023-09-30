pragma solidity 0.8.20;

import {SafeCastLib} from "../lib/solady/src/utils/SafeCastLib.sol";


contract SoladyImplementoor {
    function toUint8(uint256 value) public returns (uint8) {
        return SafeCastLib.toUint8(value);
    }

    function toUint16(uint256 value) public returns (uint16) {
        return SafeCastLib.toUint16(value);
    }

    function toUint32(uint256 value) public returns (uint32) {
        return SafeCastLib.toUint32(value);
    }

    function toUint64(uint256 value) public returns (uint64) {
        return SafeCastLib.toUint64(value);
    }

    function toUint128(uint256 value) public returns (uint128) {
        return SafeCastLib.toUint128(value);
    }
}