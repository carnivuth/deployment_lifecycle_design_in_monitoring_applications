#!/bin/bash
TARGET_FILES="main.tex graphs/*"
BUILDDIR="./build"
# event ignored captured cause vim replace file with swapfile and does not generate modify event
while true; do
  inotifywait --event modify --event close_write --event ignored --format "%w %e" $TARGET_FILES | while read file event; do

  filename=$(basename -- "$file")
  extension="${filename##*.}"
  filename="${filename%.*}"

  case "$extension" in
    mmd)
      # limit build to modified files only
      make "$BUILDDIR/$filename.png"
      make "main.pdf"
      ;;
    tex)
      make "main.pdf"
      ;;
    *)
      make build
  esac
done
done
