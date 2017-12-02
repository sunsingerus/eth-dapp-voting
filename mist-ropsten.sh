#!/bin/bash

#mist --gethpath=$(which geth)
mist --gethpath=$(which geth) --rpc=/home/user/.ethereum/geth.ipc --network=test --syncmode=fast

