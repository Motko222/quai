#!/bin/bash

source ~/scripts/quai/config/env
cd ~/quai-cpu-miner
make run-mine-background region=$region zone=$zone
