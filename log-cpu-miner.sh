n#!/bin/bash

source ~/scripts/quai/config/env
cd ~/quai-cpu-miner
tail -n 100 logs/slice-$region-$zone.log
