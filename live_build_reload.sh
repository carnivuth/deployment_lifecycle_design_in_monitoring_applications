#!/bin/bash
TARGET_FILES="$(realpath main.tex) graphs Makefile"
inotifywait --monitor --recursive --event modify --format %w $TARGET_FILES | while read file; do
  echo "$path" "$action" "$file"
  make build
done
