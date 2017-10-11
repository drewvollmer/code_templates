# optim.R
# Taken from an internet tutorial
# Drew Vollmer 03-03-2017

min.RSS <- function(data, par) {
              with(data, sum((par[1] + par[2] * x - y)^2))
}

result <- optim(par = c(0, 1), min.RSS, data = dat)
