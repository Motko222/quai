#!/bin/bash

cd ~/quai-cpu-miner
make stop
git pull origin main
make quai-cpu-miner
