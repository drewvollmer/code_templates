# command_line_arguments.R
# Passing arguments to an R file

# When applying runr, we get a set of standard call arguments, like --no-save. We use the trailingOnly
# option to only take arguments designated after --args in the command line call

x = commandArgs(trailingOnly = TRUE)
print(x)

# Testing for passed in dates
as.Date(x)

# Testing null behavior
length(x)

# Then using "Rscript [file.R] --args stuff" successfully passes stuff in as a parameter
# If you didn't pass in a parameter, then the result will be the object character(0), a character
# vector of length 0.  This is not null and we must test for it with length(x) == 0.
