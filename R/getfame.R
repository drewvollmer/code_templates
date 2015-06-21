# getfame.R

library("fame")

tp = getfame(sernames=c("series"),
                            db = "fame_database.db", start = 20140724, end = 20140725)
