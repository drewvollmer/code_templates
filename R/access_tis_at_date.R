# access_tis_at_date.R
# A program showing how to get data from a time-indexed series, imported
# from Fame, for a specific date

rm(list=ls(all=TRUE))
library("tis")
library("fame")

# getfame retrieves data from Fame into R.  The data is imported as a tis object
data = getfame(sername=c("series"), db = "fame_database.db")

# We often want to directly access the data for a given day. We do this with:
data$series[ti(20130103,"business")]
# where ti(yyyymmdd,"freq") returns the index for the object on date yyyymmdd
# where the object has Fame frequency "freq"

# We can conveniently modify a date to be in yyyymmdd format to make retrieval modular:
date = "2013-01-03"
reformatted.date = as.numeric(format(as.Date(date),"%Y%m%d"))
data$series[ti(reformatted.date,"business")]
