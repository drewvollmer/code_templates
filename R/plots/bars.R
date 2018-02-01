## bars.R

    frame.lwd = 1.5

    # Set axis limits
    if((max(curve.change, 0) - min(curve.change, 0)) > 4){
        to.nearest = ceiling((max(curve.change, 0) - min(curve.change, 0))/10)
    } else { to.nearest = .5 }
    # Create a floor at 0 and add a buffer at the top if all changes are negative
    yaxis.lim = c(min(round_any(min(curve.change), to.nearest, f = floor), 0),
                  max(round_any(max(curve.change), to.nearest, f = ceiling), to.nearest/10))

    barplot(curve.change,
            axes = FALSE,
            xlab = "xlab",
            ylab = "",
            names.arg = colnames(curve.change), # taking column names is the default behavior
            cex.names = .75,
            ylim = yaxis.lim, # needed to format y-axis
            cex.lab = .8,
            col = "steelblue")

    # Add y-axis and label
    axis(4, las = 2, tck = .02, lwd = 0, lwd.ticks = frame.lwd, cex.axis = .75,
         at = seq(yaxis.lim[1], yaxis.lim[2], to.nearest))
    axis(2, las = 2, tck = .02, lwd = 0, lwd.ticks = frame.lwd, cex.axis = .75, labels = FALSE,
         at = seq(yaxis.lim[1], yaxis.lim[2], to.nearest))
    mtext("Basis Points", side = 3, line = .2, adj =1, cex = .8, las = 1)

    # Add title
    mtext(paste("Change Since", past.date.label), cex = .9, adj = 0, at = par("usr")[1],
          line = 1.2)



# Define chart options
opt = list(frame.lwd = 1.5,
           line.lwd  = 1.2,
           label.cex = .75,
           axis.cex  = .75,
           exhibit.title.cex = 1,
           chart.title.cex = .8,
           foot.cex  = .8,
           legend.cex = .7,
           line.types = c(1,2,4),
           colors = c("black", "cornflowerblue", "springgreen4", "firebrick4"))




    plot(data$date,
         data$series0200,
         ylim = c(min(data[, 2:4], na.rm = TRUE), max(data[, 2:4], na.rm = TRUE)),
         type = "l",
         lwd  = opt$line.lwd,
         lty  = opt$line.types[1],
         col  = opt$colors[1],
         xlab = NA,
         cex.axis = opt$axis.cex,
         cex.lab = opt$label.cex,
         ylab = NA,
         axes = FALSE)

    # Add other chart series
    lines(data$date,
          data$series0500,
          lty = opt$line.types[1],
          col = opt$colors[2])
    lines(data$date,
          data$series1000,
          lty = opt$line.types[1],
          col = opt$colors[3])

    # Add legend
    legend("topright", c("2-year", "5-year", "10-year"), lty = c(1, 1, 1), bty = "n", cex = .7,
           col = opt$color[1:3])
    # Add x-axis
    axis.Date(side = 1, tck = .02, lwd = 0, lwd.ticks = opt$frame.lwd, cex.axis = opt$axis.cex,
              x = data$date)

    # Blank left axis
    axis(side = 2, tck = .02, lwd = 0, lwd.ticks = opt$frame.lwd, cex.axis = opt$axis.cex,
         labels = FALSE)

    # Labeled right axis
    axis(side = 4, tck = .02, las=2, lwd = 0, lwd.ticks = opt$frame.lwd, cex.axis = opt$axis.cex)
    mtext("ylab", side = 3, line = .2, adj =1, cex = opt$label.cex, las = 1)

    # Title
    mtext("A Time Series Chart", cex = .9, adj = 0, at = par("usr")[1], line = 1.25)
