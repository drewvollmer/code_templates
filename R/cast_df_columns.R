# cast_df_columns.R
# Changing the data type for a subset of columns of a data frame
# Drew Vollmer 08-25-2017

data[, data.cols] = sapply(data.cols, function(x) as.numeric(data[, x]))
