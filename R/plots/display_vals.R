## display_vals.R
## Parameter values for plots to be inserted in papers
## Drew Vollmer 2019-03-18

options(stringsAsFactors = FALSE)


plot(seq(1, 10), seq(20, 11),
     type = "l",
     ylab = "",
     xlab = "Date",
     cex = 2.5, cex.axis = 2.5, cex.lab = 2.5, cex.main = 3)
mtext("Weight (mil. pounds)", side = 3, line = .2, adj = 0, cex = 2.5, las = 1)
title(paste(frequency, "Shipments from", country), cex.main = 3)
mtext("Note", side = 1, line = 8, adj = 0, cex = 2.5, las = 1)


par(mai = c(2, 1, 1, 1))
