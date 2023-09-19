#!/bin/bash

cd ~/go-quai
make stop
git pull
git fetch --all
make go-quai
