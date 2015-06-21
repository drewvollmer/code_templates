#! /bin/bash
# get_earlier_date.sh

RUNDATE=2014-01-01

echo $(date "--date=${RUNDATE} -1 day" +%Y-%m-%d)

# Next month:
NEXTMONTH=$(date +"%m%Y" --date="$(date +%Y-%m-15) next month")
