#! /bin/bash
# pdftk.sh
# 

cd `dirname $0`

pdftk file1.pdf file2.pdf cat output newfile.pdf
