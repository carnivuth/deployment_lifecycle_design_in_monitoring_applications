#!/bin/bash
TARGET_FILES="."
BUILDDIR="./build"

function run_build(){
  filename=$(basename -- "$1")
  extension="${filename##*.}"
  filename="${filename%.*}"

  echo $1 $filename $extension

  # limit build to modified files only
  case "$extension" in
    mmd)
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
  --recursive \
  --exclude "$(find .  -name '.git' -type d -printf '%P|').*\.aux|.*\.bbl|.*\.bcf|.*\.bcf-SAVE-ERROR|.*\.blg|.*\.fdb_latexmk|.*\.fls|.*\.idx|.*\.ilg|.*\.ind|.*\.log|.*\.out|.*\.pdf|.*\.run" \
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
