// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title YOLO
 */
contract YOLO {

    uint256 number;

    struct position {
        address owner;
        address token;
        uint256 amount;
        uint unlockBlock;
    }


    function yoloIn() public payable {

    }

    function selectRandomAsset() private returns (address) {

    }

    function withdraw() public {
        
    }
    
}