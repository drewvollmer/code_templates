# number_of_lines_in_file.sh

# This works by dumping testfile.csv into the wordcount utility, hence the "<" (as opposed to routing
# data forward with ">")

NUMLINES=$(wc -l < "testfile.csv")
