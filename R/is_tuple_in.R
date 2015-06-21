# is.tuple.in
# Defining a function that tells whether an input set of row vectors are contained in another
# set of row vectors

is.tuple.in <- function(matrix1, matrix2){
  
  # Apply rbind() so that matrix1 has columns even if it is a row vector.
  matrix1 = rbind(matrix1)
  
  if(ncol(matrix1) != ncol(matrix2)){ 
    stop("Matrices must have the same number of columns.") }
  
  tuple.found = any(sapply(1:nrow(matrix2), function(x) all(matrix1[1,] == matrix2[x,])))
  
  # If there are more rows to be checked, use a recursive call
  if(nrow(matrix1) > 1){
    return(c(tuple.found, is.tuple.in(matrix1[2:nrow(matrix1),],matrix2)))
  } else {
    return(tuple.found)
  }
}


# Original function
is.tuple.in.original <- function(matrix1, matrix2){
          
     # Apply rbind() so that matrix1 has columns even if it is a row vector.
     matrix1 = rbind(matrix1)
     
     if(ncol(matrix1) != ncol(matrix2)){ 
          stop("Matrices must have the same number of columns.") }
     
     row.vec = matrix1[1,]
     tuple.found = FALSE
     for(i in 1:nrow(matrix2)){
          # If we find a match, then this row exists in matrix 2 and we can break the loop
          if(all(row.vec == matrix2[i,])){
               tuple.found = TRUE
               break
          }
     }
     
     # If there are more rows to be checked, use a recursive call
     if(nrow(matrix1) > 1){
          return(c(tuple.found, is.tuple.in(matrix1[2:nrow(matrix1),],matrix2)))
     } else {
          return(tuple.found)
     }
}
