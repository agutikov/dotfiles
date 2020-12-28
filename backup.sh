#!/bin/bash

#set -x

DIR=$(dirname "$(readlink -f "$0")")
FILES_DIR="$DIR/files/"

FILES=$(find $FILES_DIR -type f)

for file in $FILES;
do
  FILE=/${file#$FILES_DIR}
  #echo $FILE
  cp -v $FILE $file
done

for dir in $(cat $DIR/dirs.txt);
do
  #echo $dir
  to_dir=$(dirname $(readlink -f "$FILES_DIR/$dir"))
  #echo $to_dir
  mkdir -pv $to_dir
  cp -av $dir $to_dir
done
