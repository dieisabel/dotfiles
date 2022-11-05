#!/usr/bin/env bash

if [ -t 1 ]; then
  COLOR="always"
else
  COLOR="auto"
fi

git branch \
  --all \
  --color="$COLOR" \
  --sort=authordate \
  --format="%(color:blue)%(authordate:relative);%(color:red)%(authorname);%(color:white)%(color:bold)%(refname:short)" \
  "$@" \
  | column -s ";" -t
