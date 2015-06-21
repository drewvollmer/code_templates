#! /bin/bash
# filter_file_to_another.sh

# When given a file, you can apply a regular expression to it and direct the results to an out file
# using the "sed" command

# The '/d' option at the end deletes all matching rows
sed -e '/pattern/d' test.csv > newtest.csv

# The substitution form just subs it for you wherever it is found (the global, 'g', option)
sed -e 's/patterntosub/subbedpattern/g' test.csv > newtest.csv
