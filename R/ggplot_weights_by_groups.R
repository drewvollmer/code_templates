## ggplot_weights_by_groups.R
##
## Drew Vollmer 2020-12-02

options(stringsAsFactors = FALSE)

library("dplyr")
library("tidyverse")

to.plot %>%
    group_by(PostTime) %>%
    mutate(weight.grp = sum(w)) %>%
    ggplot(aes(x=PostTime, y=adj.price, weight=w/weight.grp)) +
    geom_violin(fill = "#00BFC4") +
    ylim(c(-500, 500)) +
    ggtitle("Distributions of Game-Day List and Late Transaction Prices") +
    xlab("Ticket Type") + ylab("Adjusted Price") +
    labs(caption = "Prices adjusted by game-level fixed effect.  Game-day list prices are separated by posting time.  Late transactions occurred between 1 and 5 days from the game.") +
    theme_bw(base_size = 30)
