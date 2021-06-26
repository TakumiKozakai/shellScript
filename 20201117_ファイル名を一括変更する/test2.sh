#!/bin/bash
# findでファイルを見つけたファイルをrenameする
# Ex.beforeファイルをafterファイルに変える
# ↓コマンド
# sh test2.sh before after

FROM=$1
TO=$2

# Linux
# find . -type f | xargs rename $FROM $TO

# Unix
find . -type f | xargs rename -s $FROM $TO