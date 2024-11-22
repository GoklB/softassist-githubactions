#!/bin/bash
while [[ "$#" -gt 0 ]]; do case $1 in
  --feature-flag) FEATURE_FLAG="$2"; shift;;
  *) echo "Unknown parameter passed: $1"; exit 1;;
esac; shift; done

echo "Running tests with FEATURE_FLAG=${FEATURE_FLAG}"

if [ "$FEATURE_FLAG" = "true" ]; then
  echo "Feature enabled: Running feature-specific tests..."
  # Insert feature-enabled tests here
else
  echo "Feature disabled: Running baseline tests..."
  # Insert baseline tests here
fi
