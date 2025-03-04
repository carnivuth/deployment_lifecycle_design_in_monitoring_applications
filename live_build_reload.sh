#!/bin/bash
TARGET_FILES="main.tex graphs chapters"
BUILDDIR="./build"

function run_build(){
  filename=$(basename -- "$1")
  extension="${filename##*.}"
  filename="${filename%.*}"

  echo $1 $filename $extension

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
}

# monitor for move_self and create cause vim deletes original file and rename swapfile
inotifywait \
  --monitor  \
  --event move_self \
  --event create \
  --format "%w %e %f" $TARGET_FILES | while read file event newfile; do

  echo $file $event $newfile

  # check if a file inside a dir is been modified or created
  if [[ "$newfile" != "" ]] && [[ $event == "CREATE" ]] && [[ $newfile == *.* ]]; then
    run_build "$newfile"

  # check if a file outside a dir is been modified
  elif [[ $event == "MOVE_SELF" ]];then
    run_build "$file"
  fi
done
