#!/bin/bash

SERVER=$1
USER=$2
PASS=$3
FILE=$4

retrycount=1

  gtimeout 90 ftp -n <<END
    open $SERVER
    user $USER $PASS
    cd public_html/public_html
    binary
    prompt
    get $FILE
  END
  time 3

  if [ $? -eq 0 ]; then
    echo "通信成功"
    echo "リトライ回数＝${retrycount}"
    # break
  fi
  (( retrycount++ ))
  if [ retrycount -eq 3 ]; then
    # エラーログ出力
    # break
  fi

exit $?