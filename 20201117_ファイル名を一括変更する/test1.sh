#!/bin/bash
# rename 置換対象文字列 置換後文字列 対象ファイル

# Linux
# rename 20201116 $(date '+%Y%m%d') *_20201116.csv

# Unix
rename -s 20201116 $(date '+%Y%m%d') *_20201116.csv
