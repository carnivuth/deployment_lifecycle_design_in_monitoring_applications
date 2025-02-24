#!/bin/bash
TARGET_FILES="main.tex graphs Makefile"
# event ignored captured cause vim replace file with swapfile and does not generate modify event
while true; do
  inotifywait --recursive --event modify --event close_write --event ignored --format "%w %e" $TARGET_FILES | while read file event; do
  make build
done
done
