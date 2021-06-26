#!/bin/bash

# 引数にstdoutかstderrを渡す
# stdoutの場合、標準出力ファイルにOKと出力
# stderrの場合、エラー出力ファイルにERRORと出力

if [ $1 == "stdout" ]; then
  echo "OK"
elif [ $1 == "stderr" ]; then
  echo "[$(date '+%Y/%m/%d %H:%M:%S')] [shell] [ERROR] ERROR" >>stderr.log
  exit 1
fi
