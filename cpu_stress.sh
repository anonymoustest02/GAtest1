#!/bin/bash

# Run a CPU-intensive task for 60 seconds using 'stress' or 'dd' command.
# 'stress' package can generate CPU load. If it's not available, 'dd' can also be used.

# Check if 'stress' command is available
if command -v stress &> /dev/null; then
  echo "Running CPU load with 'stress' for 60 seconds..."
  stress --cpu 4 --timeout 60  # 4 CPU cores, run for 60s
else
  echo "'stress' not found, running a CPU load with 'dd' for 60 seconds..."
  timeout 60s dd if=/dev/zero of=/dev/null &
fi

# Wait for the process to finish
wait
echo "CPU load completed."
