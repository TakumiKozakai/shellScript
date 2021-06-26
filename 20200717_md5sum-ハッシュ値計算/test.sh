#!/bin/bash
# test.txtのmd5sum値を算出してcheckに書き込む
md5sum test.txt > check

# checkに記述されているtest.txtのmd5sum値を照合する
md5sum -c check

# 照合に成功（test.txtのmd5sum値がcheckに記述されている値と一致）すると
# OKと出力される
# 照合に失敗した場合は、FAILEDと出力される
