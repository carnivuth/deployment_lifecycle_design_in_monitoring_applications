#!/bin/bash
inotifywait --monitor --recursive --event modify "$(realpath main.tex)" | while read path action file; do
  echo "$path" "$action" "$file"
  make build
done
