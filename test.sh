#!/bin/bash
output=$(bash app.sh)
if [[ "$output" == "hey testing--pipeline" ]]; then
  echo "Test passed"
  exit 0
else
  echo "Test failed"
  exit 1
fi
