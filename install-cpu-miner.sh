#!/bin/bash

cd ~
git clone https://github.com/dominant-strategies/quai-cpu-miner.git
cd quai-cpu-miner
cp config.yaml.dist config.yaml
make quai-cpu-miner
