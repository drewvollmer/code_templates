#! /bin/bash
# advanced_ls.sh
# Using an or clause and ignoring certain patterns

cd `dirname $0`

ls {prefix1,prefix2}*year.pdf --ignore prefix1_bad_year.pdf
