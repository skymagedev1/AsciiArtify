#!/bin/bash

# Check if correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <resource_type> <namespace>"
    exit 1
fi

# Define command-line arguments
RESOURCE_TYPE=$1
NAMESPACE=$2

# Retrieve resource usage statistics from Kubernetes
kubectl top "$RESOURCE_TYPE" -n "$NAMESPACE" | tail -n +2 | while read line; do
  # Extract CPU and memory usage from the output
  NAME=$(echo "$line" | awk '{print $1}')
  CPU=$(echo "$line" | awk '{print $2}')
  MEMORY=$(echo "$line" | awk '{print $3}')

  # Output the statistics to the console
  echo "$RESOURCE_TYPE, $NAMESPACE, $NAME, $CPU, $MEMORY"
done