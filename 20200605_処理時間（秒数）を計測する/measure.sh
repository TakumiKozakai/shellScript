#!/bin/bash

### dateコマンドで計測する方法 ### echo 'dateコマンドで計測する方法'

echo 計測開始：$(date "+%Y-%m-%d %H:%M:%S")
start_time=`date +%s`

### 計測したい処理・コマンド ###
for i in {1..5}
do
  echo $i
  sleep 1
done

echo 計測終了：$(date "+%Y-%m-%d %H:%M:%S")
end_time=`date +%s`

run_time=$((end_time - start_time))

echo '計測時間：'$run_time's'

echo ''

### SECONDS変数で計測する方法 ### echo 'SECONDS変数で計測する方法'

echo 計測開始
# 初期化
SECONDS=0

### 計測したい処理・コマンド ###
for i in {1..5}
do
  echo $i
  sleep 1
done

echo 計測終了

run_time=$SECONDS
 
echo '計測時間：'$run_time's'