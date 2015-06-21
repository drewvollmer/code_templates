# merge_file_list.R

# For a list of data frames quote.list:

all.quotes = Reduce(function(...) merge(..., by = "date", all = TRUE), quotes.list)
