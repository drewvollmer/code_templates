## create_balanced_panel.R
##
## Drew Vollmer 2021-11-28

options(stringsAsFactors = FALSE)


library("tidyverse")

df = expand(df, id, date) %>% left_join(df)
