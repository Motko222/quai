#!/bin/bash

source ~/scripts/quai/config/env

cd ~/go-quai
make run-slice REGION=$region ZONE=$zone
