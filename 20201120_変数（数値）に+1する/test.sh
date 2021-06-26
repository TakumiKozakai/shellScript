#!/bin/bash
# 変数COUNTを宣言
COUNT=0

# COUNTを出力
echo $COUNT

# COUNTを+1して出力
# Linuxでの書き方
#(($COUNT++))

# Unixでの書き方
COUNT=`expr $COUNT + 1`
echo $COUNT
