# split_string.R

# Split a string into chunks on one or more delimiters:
example = "jfklds-fjdksa;fhkjdsah riewo"
strsplit(example,"-")
strsplit(example,"[- ]")
strsplit(example,"[- ;]")

# Take an indexed chunk of the divided string:
sapply(strsplit(example,"[- "),"[",3)
