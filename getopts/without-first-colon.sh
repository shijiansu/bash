#!/bin/bash

# \?): ?)这样也是可以的
while getopts "a:" opt; do
  case $opt in
    a)
      echo "this is -a the arg is ! $OPTARG" 
      ;;
    \?)
      echo "Invalid option: -$OPTARG" 
      ;;
  esac
done
