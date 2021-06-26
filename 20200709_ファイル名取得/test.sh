#!/bin/bash
files="csv/*"
fileary=()
for filename in $files; do
  echo $filename
  fileary+=("$filename")
done
for filename in ${fileary[@]}; do
  echo $filename
done