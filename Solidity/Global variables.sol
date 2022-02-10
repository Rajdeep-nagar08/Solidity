// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract globalVariables{ 
/*
these are variables exists in the global namespace used to get information about the blockchain.
Can be access anywhere in the contract

The msg global variables in particular are special global variables that contain 
properties which allow access to the
 blockchain's contracts, their functions, and their values

GLOBAL VARIABLES IN SOLIDITY:-

blockhash(uint blockNumber) returns (bytes32)-	Hash of the given block - only works for 256 most recent, excluding current, blocks
block.coinbase (address payable)	-Current block miner's address
block.difficulty (uint)-	Current block difficulty
block.gaslimit (uint)	-Current block gaslimit
block.number (uint)	-Current block number
block.timestamp (uint)-	Current block timestamp as seconds since unix epoch
gasleft() returns (uint256)-	Remaining gas


msg.data (bytes calldata)	-Complete calldata
msg.sender (address payable)	-Sender of the message (current caller)
msg.sig (bytes4)-	First four bytes of the calldata (function identifier)
msg.value (uint)	-Number of wei sent with the message
now (uint)	-Current block timestamp
tx.gasprice (uint)-	Gas price of the transaction
tx.origin (address payable)-	Sender of the transaction


*/

address public myadd=msg.sender;  // address of deployeer

uint public time=block.timestamp;  // time during deploying (unix )
uint public diff=block.difficulty;
uint public gascost=tx.gasprice;


}
