## state_map.R
## A basic state-level map
## Drew Vollmer 2020-02-25

options(stringsAsFactors = FALSE)

library("choroplethrMaps")
library("ggplot2")
library("ggmap")
library("scales") # for rescale()

all.data = data.frame("state" = c("AZ", "CA", "NE", "MN"), "value" = c(10, 10, 10, 5))


state.map = map_data("state")

## Convert state abbreviation to its full lowercase name
data(state.regions)
state.names = unique(state.regions[, c("region", "abb")])
all.data = merge(all.data, state.names, by.x = "state", by.y = "abb", all = TRUE)

## Extract data to be plotted
plot.data = all.data[, c("region", "value")]
colnames(plot.data) = c("state", "value")


## Create plot
ggplot(plot.data, aes(map_id = state)) +
    geom_map(aes(fill = value), map = state.map) +
    expand_limits(x = state.map$long, y = state.map$lat)
