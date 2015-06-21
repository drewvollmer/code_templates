# try_catch.R
# Applying the tryCatch() function to report errors more descriptively

# Consider a really basic function that adds two numbers
add.numbers <- function(x, y){

     output <- tryCatch(
                   {
                        # This is the code that the function is trying.  It executes until it finds an
                        # error for all iterations
                        message("This prints for every function call")

                        return(x + y)
                   },
                        error = function(cond){
                             # This prints whenever the function encounters an error
                             message(paste("Error adding", x, "and", y))
                        },
                        warning = function(cond){
                             # This prints when there is a warning
                             message("Encountered a warning.")
                        },
                        finally = {
                             # This runs at the end of every iteration regardless of success, error,
                             # or warnings
                             message("This message will occur regardless of function success.")
                        }


                        )
}
