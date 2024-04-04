#!/bin/bash

directory="./beecrowd"

for file in "$directory"/*; do
  if [ -f "$file" ]; then
    first_line=$(head -n1 "$file" | cut -c3-)
    mv "$file" "$directory/${first_line}.md"
  fi
done