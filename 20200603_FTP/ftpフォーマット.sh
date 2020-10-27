#!/bin/bash

SERVER=$1
USER=$2
PASS=$3
FILE=$4

ftp -n <<END
  oepn $SERVER
  user $USER $PASS
  cd <パス>
  binary <OR ascii>
  prompt #YES, NO等の選択を表示しない
  get $FILE
END
exit $?