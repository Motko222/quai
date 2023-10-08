#!/bin/bash

read -p "Sure? " yn1
case $yn1 in
  y|Y)
    cd ~/go-quai
    echo "Stopping..."
    make stop
    echo "Updating..."
    git pull
    git fetch --all
    read -p "Clear state? " yn2
    case $yn2 in
      y|N)
        echo "Clearing state..."
        rm -rf nodelogs 
        rm -rf ~/.quai
      ;;
      *)
        echo "Not clearing state..."
      ;;
    esac
    echo "Building..."
    make go-quai
  ;;
  *)
  echo "Cancelled..."
  ;;
esac
