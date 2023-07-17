## coeff_paths.R
## How to plot a time-series of coefficients
## Drew Vollmer 2020-02-12

options(stringsAsFactors = FALSE)

library("ggplot2")


## Put your data in a format like this:
## - Three rows for each variable: point estimate, CI lower bound, CI upper bound

example.data = data.frame("var" = factor(seq(1, 10)), "coeff" = seq(4, 1.75, -.25)^2,
                          "lower" = seq(4, 1.75, -.25)^2 - seq(.1, 1, .1)^2,
                          "upper" = seq(4, 1.75, -.25)^2 + seq(.1, 1, .1)^2)
example.data = reshape(example.data, idvar = "var", varying = c("coeff", "lower", "upper"),
                       timevar = "type", v.names = "val", times = c("coeff", "lower", "upper"),
                       direction = "long")

## You can do labels manually if your labels are not ordered.  Factors probably work too.
labs = c("January", "February", "March", "April", "May", "June", "July", "August", "September",
         "October")

png(filename = "dind_example_plot.png", height = 800, width = 1400)
ggplot(example.data, aes(x = var, y = val)) +
    geom_line(stat = "summary", fun.y = "mean", group = 1) +
    stat_boxplot(geom = "errorbar") +
    geom_point(data = example.data[ example.data$type == "coeff", ]) +
    xlab("X-Axis") + ylab("Value") +
    scale_x_discrete(labels = labs) +
    ggtitle("Title") +
    theme_gray(base_size = 30) +
    labs(caption = "Notes here.")
dev.off()
