# use_regular_expression_on_file.pl
# Showing a command to use regular expressions at a Bash terminal


# This invokes Perl to run a single regular expression on the file
# of your choice.  The regular expression is in single quotes.  The initial
# s means that we will substitute the second section with the third.  For
# example, this command replaces NA with . in the output.  Useful options for
# the area to be replaced include \s, which tells it to remove all blank
# spaces immediately before the region to remove.  Quotes can be escaped with
# a backslash.
perl -i -pe 's/NA/./ig' [filename]
