#!/bin/bash

source ~/scripts/quai/config/env

cd ~/go-quai
version=$(cat ./VERSION)

localBlockHeight=$(curl -s --location -g 'http://127.0.0.1:8512' --header 'Content-Type: application/json' --data '{ "jsonrpc": "2.0", "method": "quai_blockNumber", "params": [], "id": 1 }' | jq .result)
remoteBlockHeight=$(curl -s —location -g 'https://rpc.paxos1.colosseum.quaiscan.io/' --header 'Content-Type: application/json' --data '{ "jsonrpc": "2.0", "method": "quai_blockNumber", "params": [], "id": 1 }' | jq .result)
localBlockHeightNum=${localBlockHeight:3:-1}
remoteBlockHeightNum=${remoteBlockHeight:3:-1}
((localBlockHeightNum=16#$localBlockHeightNum));
((remoteBlockHeightNum=16#$remoteBlockHeightNum));
diffBlockHeight=$(expr $remoteBlockHeightNum - $localBlockHeightNum)
folderSize=$(du -hs ~/go-quai | awk '{print $1}')

if [ $diffBlockHeight -gt 10 ]
  then
    isSynced=false
    status=error
    note="'syncing $localBlockHeightNum/$remoteBlockHeightNum'"
  else
    isSynced=true
    status=ok
fi

echo "updated='$(date +'%y-%m-%d %H:%M')'"
echo localHeight=$localBlockHeightNum
echo remoteHeight=$remoteBlockHeightNum
echo isSynced=$isSynced
echo status=$status
echo note=$note
echo network=$network
echo type=$type
echo id=$id
echo version=$version
echo foldersize=$folderSize
