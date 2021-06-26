#!/bin/bash
# lsを実行して終了ステータスをチェックする
# 終了ステータス=0のため、エラーを出力しない
ls
if [ $? -ne 0 ] 
then 
    echo "there was an error" >> error.log 
fi

# cpを実行して終了ステータスをチェックする
# 終了ステータス≠0のため、エラーをerror.logに出力する
cp .. .. 
if [ $? -ne 0 ] 
then 
    echo "there was an error" >> error.log
fi
