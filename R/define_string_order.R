# define_string_order.R

# If you don't want to use factors and you want strings to sort non-alphabetically, you can use the
# match() function

x <- c("white","white","blue","green","red","blue","red")
custom.ordering <- c("red","white","blue","green")
x[order(match(x, custom.ordering))]
