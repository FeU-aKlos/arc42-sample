#!/usr/bin/env bash

echo "==========================="
echo "  creating diagrams"
echo "==========================="
diagrams_target_dir=./src/images
diagrams_dir=./src/diagrams

# Recursively find all d2 files in diagrams directory and its subdirectories
diagrams=$(find ${diagrams_dir} -type f -name '*.d2')

for entry in $diagrams
do
  echo "$entry"
  # Extract the relative path without the extension
  relative_path=${entry#"$diagrams_dir/"}
  filename="${relative_path%.*}"
  # Generate the target SVG path by combining the target directory and relative path
  svg_path="${diagrams_target_dir}/${filename}.svg"
  
  d2 "$entry" "$svg_path"
done
