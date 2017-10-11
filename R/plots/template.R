
# Step 2: Plot your data using plot(). Your data should be in a data
# frame -- do this by using data.frame(). Be sure to indicate axes =
# FALSE in your plot().

#example

x11() #this will open a device to view your plot

plot(x=dataframe$date,
     y=dataframe$series*100,
     ylim=c(x,y),
     xlab="", #be sure to have empty labels
     ylab="", #^ditto
     type="l",#specify the type of plot.
     lwd=.7, #width of the line
     col="black",
     axes = FALSE
     )
#use lines() to plot additional lines on top of your plot
lines(x=dataframe$date,
      y=dataframe$series2*100,
      lty=1,
      lwd=.7,
      col="black")

#Step 3: Add your axes using axis().

#example
#axis(1) is your x-axis
axis(1,at = seq(from = dataframe$date[1], to = dataframe$date[length(dataframe$date)], by ="quarter"), tck =.015,lwd=0.1, lwd.ticks=.9,labels=labs)
#axis(4) is your right-axis
axis(4, at = seq(from = 0, to = 1, by = .1), las = 1,tck=.025,lwd=0.1,
     lwd.ticks=.9)
#axis(2) is your left-axis. Since you only want ticks on this axis,
#leave labels=FALSE
axis(2, at = seq(from = 0, to = 1, by = .1), las = 1,tck=.025,lwd=0.1,
     lwd.ticks=.9,labels=FALSE)

#Step 4: Use mtext to insert axis labels and footnootes.

#example:
mtext("Weekly", side = 3, line = -1.4, adj =0.03, cex = .8, las = 1) 
mtext("Basis Points", side = 3, line = .2, adj =1, cex = .8, las = 1)
mtext("Source: Place.",side=1,line=1.7,adj= 0, cex=.7,lwd=1)
