#! /bin/bash
# number_of_files_and_lines.sh

cd `dirname $0`

# For a recursive search:
find . -type f -name '*.R' | wc -l

# Non-recursive:
find . -maxdepth 1 -type f -name '*.R' | wc -l 
ls -l *.R | wc -l

# The -l option for the wc command counts the number of lines in the input.  In this case, the find
# and ls commands get a list of all matching files, then we pipe it into wc to count the number of
# files matched.

# To get the number of lines in files matching a wildcard:

# Recursive:
find . -name '*.R' | xargs wc -l

# Non-recursive
wc -l *.R
