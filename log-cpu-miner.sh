n#!/bin/bash

source ~/scripts/quai/config/env
cd ~/quai-cpu-miner
tail -f -n 100 logs/slice-$region-$zone.log
