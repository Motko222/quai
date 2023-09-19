#!/bin/bash

source ~/scripts/quai/config/env
cd ~/quai-cpu-miner
tail -n 100 logs/slice-$zone-$region.log
