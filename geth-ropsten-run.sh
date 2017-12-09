#!/bin/bash

#/usr/bin/geth --testnet --syncmode fast --cache 1024 --ipcpath /home/user/.ethereum/geth.ipc

/usr/bin/geth \
	--testnet \
	--syncmode fast \
	--cache 1024 \
	--ipcpath /home/user/.ethereum/geth.ipc \
	--rpc \
	--rpcaddr "0.0.0.0" \
	--rpcapi "admin,debug,miner,shh,txpool,personal,db,eth,net,web3" \
	--rpccorsdomain "*" \
	console

#	--rpccorsdomain "http://localhost:8080" \

#/usr/bin/geth --testnet --syncmode fast --cache 1024 --ipcpath /home/user/.ethereum/geth.ipc --rpc --rpcaddr "0.0.0.0" --rpcapi "admin,debug,miner,shh,txpool,personal,eth,net,web3" --mine console

