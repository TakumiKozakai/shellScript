# !/bin/sh
# ↓コマンドを指定（サンプルはls.shファイルを実行）
bash measure.sh &

chars="/-\|"

# ↓指定したコマンドをgrep
while [ "$(ps -ef | grep 'measure.sh' | wc -l | awk '{print $1}')" -ne "1" ]; do
  for (( i=0; i<${#chars}; i++ )); do
    sleep 0.5
    printf "processing ... %s\r" "${chars:$i:1}"
  done
done
