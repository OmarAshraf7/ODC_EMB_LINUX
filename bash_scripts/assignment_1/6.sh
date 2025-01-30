#!/bin/bash

# Trap Ctrl+C (SIGINT) and run a function
trap 'echo "Ctrl+C pressed!"; exit' SIGINT

while true
do
  echo "Running... Press Ctrl+C to stop"
  sleep 1
done
