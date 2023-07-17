## overlaid_histograms.R
## Drew Vollmer 2019-07-15

options(stringsAsFactors = FALSE)

library("ggplot2")

first.obs = data.frame("earliest.time.to.event" = runif(100), "unsold" = as.logical(round(runif(100))))

ggplot(first.obs, aes(x = earliest.time.to.event, fill = unsold)) + geom_histogram(alpha = .2, position = "identity")



## With different data frames
ggplot(data[ data$price <= 200, ], aes(price, weight = purch.prob2*block.weight, y = ..density..)) +
    geom_histogram(fill = "red", alpha = 0.2) +
    geom_histogram(data = data[ data$num.trans == 2 & data$price <= 200, ], aes(price, y = ..density..), fill = "blue", alpha = 0.2)


png(filename = "graphics/sold_unsold_first_post_timing.png", height = 800, width = 1400)
ggplot(first.obs[ first.obs$unsold, ], aes(x = earliest.time.to.event, weight = 1, y = ..density.., fill = "red")) +
    geom_histogram(alpha = 0.2) +
    geom_histogram(data = first.obs[ !first.obs$unsold, ], aes(earliest.time.to.event,
                                                               weight = 1, y = ..density.., fill = "blue"),
                   alpha = 0.2) +
    scale_fill_manual(name = "", values = c("red", "blue"), labels = c("Unsold", "Sold")) +
    ggtitle("Listing Timing by Sale Status") +
    xlab("Days to Event at First Posting") + ylab("Fraction") +
    theme_gray(base_size = 30)
dev.off()
