#!/bin/bash

set -xeu

REPO=${HOME}/dotfiles

cd $REPO

for item in $(find ./ -type f ! -path '*/.git*'); do
  cp -a --parents /$item ${REPO}/
done

