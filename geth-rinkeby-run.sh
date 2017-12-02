#!/bin/bash

#/usr/bin/geth --testnet --syncmode fast --cache 1024 --ipcpath /home/user/.ethereum/geth.ipc

/usr/bin/geth \
	--rinkeby \
	--syncmode fast \
	--cache 1024 \
	--ipcpath /home/user/.ethereum/geth.ipc \
	--rpc \
	--rpcaddr "0.0.0.0" \
	--rpcapi "admin,debug,miner,shh,txpool,personal,eth,net,web3" \
	console

#/usr/bin/geth --testnet --syncmode fast --cache 1024 --ipcpath /home/user/.ethereum/geth.ipc --rpc --rpcaddr "0.0.0.0" --rpcapi "admin,debug,miner,shh,txpool,personal,eth,net,web3" --mine console

