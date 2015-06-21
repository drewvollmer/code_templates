# loop_over_df.R
# When trying to loop over the rows of a data frame, it's best to use the by() function and not an
# apply() function so that you retain a data frame structure

x = data.frame(char.var = c("a", "b", "c"), num.var = c(15, 3, 1))

# Now define a function that requires an input data frame
add.new.char <- function(row){

    return(paste(row$char.var, "bloop"))
}

# Apply fails because you can't refer to a data frame vector using the $ specification, but by works:
by(x, 1:nrow(x), add.new.char)

# Since it returns data type "by", you can cast as a vector or cbind the values
as.vector(by(x, 1:nrow(x), add.new.char))
cbind(by(x, 1:nrow(x), add.new.char))
