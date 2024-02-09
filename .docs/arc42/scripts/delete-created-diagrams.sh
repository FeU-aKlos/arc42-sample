#!/usr/bin/env bash

echo "==========================="
echo "  deleting created diagrams"
echo "==========================="
diagrams_target_dir=./src/images
diagrams_dir=./src/diagrams

# Recursively find all *.d2 files in the diagrams directory and its subdirectories
diagrams=$(find ${diagrams_dir} -type f -name '*.d2')

for d2file in $diagrams
do
  # Construct the corresponding SVG file path by replacing the .d2 extension with .svg
  svgfile="${diagrams_target_dir}${d2file#${diagrams_dir}}"
  svgfile="${svgfile%.d2}.svg"

  # Check if the corresponding SVG file exists and then delete it
  if [ -e "$svgfile" ]; then
    echo "Deleting $svgfile"
    rm "$svgfile"
  else
    echo "SVG file not found for $d2file"
  fi
done