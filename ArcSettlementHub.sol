// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract ArcSettlementHub {
    uint256 public currentBatchId;
    address public immutable coordinator;

    event BatchRecorded(uint256 indexed batchId, uint256 timestamp);

    constructor(uint256 _initBatch) {
        coordinator = msg.sender;
        currentBatchId = _initBatch;
    }

    function recordArcBatch(uint256 _batchCode) external {
        currentBatchId = _batchCode;
        emit BatchRecorded(_batchCode, block.timestamp);
    }
}
