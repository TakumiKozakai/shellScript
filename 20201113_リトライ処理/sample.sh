# --- リトライ処理サンプル1 ---
function retry() {
  for i in {1..3}; do
    "$@" && break
  done
  return $?
}
# ------

# --- リトライ処理サンプル2 ---
RETRY_COUNT=3     # リトライ回数3回
RETRY_INTERVAL=60 # リトライ間隔60秒

while [[ $COUNT -ne $RETRY_COUNT ]]
do
	COUNT=`expr $COUNT + 1`
	sleep $RETRY_INTERVAL
done
# ------
