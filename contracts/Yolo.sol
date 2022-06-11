// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.6.0 <0.9.0;

import "https://github.com/smartcontractkit/chainlink/blob/develop/contracts/src/v0.8/VRFConsumerBaseV2.sol";
import "https://github.com/smartcontractkit/chainlink/blob/develop/contracts/src/v0.8/interfaces/VRFCoordinatorV2Interface.sol";
import "https://github.com/smartcontractkit/chainlink/blob/develop/contracts/src/v0.8/interfaces/LinkTokenInterface.sol";

/**
 * @title YOLO
 */
contract YOLO {

    mapping(address => uint) public balances;

    constructor () payable {}

    struct position {
        address owner;
        address token;
        uint256 amount;
        uint unlockBlock;
    }

    function yoloIn() public payable {
        balances[msg.sender] = msg.value;
    }

    function selectRandomAsset() private returns (address) {

    }

    function withdraw() public {
        payable(msg.sender).transfer(address(this).balance);
    }
    
}