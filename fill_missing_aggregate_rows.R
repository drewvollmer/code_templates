## fill_missing_aggregate_rows.R
## Aggregate omits rows where the combination of group variables did not occur.  This is a problem
## for interpolation in ggplot.
## Drew Vollmer 2018-12-19

options(stringsAsFactors = FALSE)


fill.in.rows <- function(agg.result){

    ## Assume that the last column contains the data and all others are identifiers
    all.ids = expand.grid(lapply(1:(ncol(agg.result) - 1), function(x) unique(agg.result[,x])))
    colnames(all.ids) = colnames(agg.result)[1:(ncol(agg.result) - 1)]

    ## Merge onto the original results, which generates NAs for missing observations
    merged = merge(all.ids, agg.result, by = colnames(all.ids), all.x = TRUE)

    ## Replace missing observations with NAs
    last.col = colnames(agg.result)[ncol(agg.result)]
    merged[ is.na(merged[, last.col]), last.col] = 0

    return( merged )
}
