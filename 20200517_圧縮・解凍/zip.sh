echo '＝＝＝処理開始＝＝＝'
echo ''

echo '＝＝＝既存zip削除開始＝＝＝'
  rm test.zip
echo '処理結果:' $?
echo '＝＝＝既存zip削除終了＝＝＝' && echo ''
sleep 3

echo '＝＝＝既存日時ディレクトリ削除開始＝＝＝'
  rm -r $(date '+%Y%m%d')
echo '処理結果:' $?
echo '＝＝＝既存日時ディレクトリ削除終了＝＝＝' && echo ''
sleep 3

echo '＝＝＝圧縮開始＝＝＝'
  time zip test *.txt
echo '処理結果:' $?
echo '＝＝＝圧縮終了＝＝＝' && echo ''
sleep 3

echo '＝＝＝日時ディレクトリ作成開始＝＝＝'
  mkdir $(date '+%Y%m%d')
echo '処理結果:' $?
echo '＝＝＝日時ディレクトリ作成終了＝＝＝' && echo ''
sleep 3

echo '＝＝＝コピー開始＝＝＝'
  time cp -f *.zip $(date '+%Y%m%d')
echo '処理結果:' $?
echo '＝＝＝コピー終了＝＝＝' && echo 
sleep 3

echo '＝＝＝日時ディレクトリ内表示＝＝＝'
  ls $(date '+%Y%m%d')
echo '＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝' && echo ''
sleep 3

echo '処理結果:' $?

echo ''
echo '＝＝＝処理終了＝＝＝'
