#!/bin/bash

DIR="pkg/transport"
# Find all .pb.go files in the subdirectories
find "$DIR" -type f -name "*.pb.go" -print0 | while IFS= read -r -d '' file; do
  # Get the directory path and filename
  dir=$(dirname "$file")    
  filename=$(basename "$file")
  # Move the file to the target directory
  mv "$file" "$dir/pb/$filename"
done
