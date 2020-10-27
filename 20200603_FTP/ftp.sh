#!/bin/bash

#SERVER=$1
#USER=$2
#PASS=$3
#FILE=$4

SERVER=s2-arie.blog
USER=ioxzlyjt
PASS=7+Z!tXXi8ge52O
#FILE=index.php
FILE=*

echo "$(date '+%Y/%m/%d %H:%M:%S')%y 通信開始" >> log.log

#retrycount=1

gtimeout 90 ftp -n <<END >>log.log 2>>log.log
  open $SERVER
  user $USER $PASS
  cd public_html/public_html
  binary
  get index.zip
  get check
  bye
END

if [ $? -ne 0 ]; then
  echo "FTP通信に失敗しました。"
fi

#grep index.php
if [ $? -ne 0 ]; then
  echo "ファイルが存在しません。"
fi

#  time 3

#  if [ $? -eq 0 ]; then
#    echo "通信成功"
#    echo "リトライ回数＝${retrycount}"
#    # break
#  fi
#  (( retrycount++ ))
#  if [ retrycount -eq 3 ]; then
#    # エラーログ出力
#    # break
#  fi

echo "$(date '+%Y/%m/%d %H:%M:%S')%y 通信終了" >> log.log
exit $?