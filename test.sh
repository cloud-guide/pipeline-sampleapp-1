#!/bin/bash
output=$(bash app.sh)
if [[ "$output" == "Hello Jenkins!" ]]; then
  echo "Test passed"
  exit 0
else
  echo "Test failed"
  exit 1
fi
