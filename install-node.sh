#!/bin/bash

# https://docs.quai.network/node/node-overview/run-a-node

sudo snap install go --classic
sudo apt install git make
cd ~
git clone https://github.com/dominant-strategies/go-quai
cd go-quai
read -p "Release (check here https://github.com/dominant-strategies/go-quai/tags) ? " release
git checkout $release
cp network.env.dist network.env
nano network.env

if [ -f ~/scripts/quai/config/env] 
  then
    echo "Config file found."
  else
    echo "Config file not found, creating one."
    cp ~/scripts/quai/config/env.sample ~/scripts/quai/config/env
fi
