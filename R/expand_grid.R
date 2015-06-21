# expand_grid.R
# Used to get permutations of several vectors

agg.series = as.character(apply(expand.grid(c("type1", "type2"), c("metric1", "metric2", "metric3"),
                                c(1, 2), c("agg_c.mave", "agg.mave")), 1, paste, collapse = "_"))
