// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.6;

import "ds-test/test.sol";

import "./Dapptoolsapp.sol";

contract DapptoolsappTest is DSTest {
    Dapptoolsapp dapptoolsapp;

    function setUp() public {
        dapptoolsapp = new Dapptoolsapp();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
    function test_basic_fuzzing(uint8 value) public {
        bool response = dapptoolsapp.play(value);
        assertTrue(response);
    }
}
