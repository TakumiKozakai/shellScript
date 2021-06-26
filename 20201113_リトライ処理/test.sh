#!/bin/bash
set -x

# sample.sh-2の処理

retry() {
  for i in {1..3}; do
    "$@" && break
  done
  return $?
}

retry test 0 -eq 1
