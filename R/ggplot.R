## ggplot.R
## An example of ggplot syntax
## Drew Vollmer 2019-11-19

options(stringsAsFactors = FALSE)


ggplot(data = avg.tariff, aes(x = quarter, y = rate, group = type)) +
    geom_line(aes(linetype = type, color = type)) +
    geom_point() +
    ## Tariff imposition quarters
    ## Preliminary dates: 2012-05-16 and 2014-07-24 (for AD, see review_dates.csv)
    geom_vline(xintercept = as.Date("2012-04-01"), linetype = "dotted", color = "red", size = 1.15) +
    geom_vline(xintercept = as.Date("2014-07-01"), linetype = "dotted", color = "red", size = 1.15) +
    xlab("Time") + ylab("Tariff Rate (%)") +
    ggtitle("Average Effective Tariff Rates: Importers Facing Tariffs") +
    scale_linetype_discrete("Tariff Type") + scale_colour_discrete("Tariff Type") +
    theme_gray(base_size = 30) +
    labs(caption = "Average import-weighted tariff rates for firms affected by tariffs.\nNaive and strategic weights account for tariff-exempt production in US.")

## No legend: theme(legend.position = "none")
