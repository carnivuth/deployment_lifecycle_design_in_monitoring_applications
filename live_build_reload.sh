#!/bin/bash
TARGET_FILES="main.tex graphs graphs/* chapters/*"
BUILDDIR="./build"
# event ignored captured cause vim replace file with swapfile and does not generate modify event
while true; do
  inotifywait --event modify --event close_write --event ignored --format "%w %e %f" $TARGET_FILES | while read file event newfile; do

  if [[ "$newfile" != "" ]]; then file="$newfile";fi
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
