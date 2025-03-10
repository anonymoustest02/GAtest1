#!/bin/bash

echo "Starting Fibonacci computation in shell script..."

# Define the Fibonacci function
fibonacci() {
  if [ $1 -le 1 ]; then
    echo $1
  else
    echo $(( $(fibonacci $(( $1 - 1 ))) + $(fibonacci $(( $1 - 2 ))) ))
  fi
}

# Start the timer
start_time=$(date +%s)

# Run the computation
result=$(fibonacci 22)  # Adjust the number for intensity; 20 is moderate for Bash

# End the timer
end_time=$(date +%s)
elapsed=$((end_time - start_time))

echo "Fibonacci result: $result"
echo "Computation took: $elapsed seconds"
