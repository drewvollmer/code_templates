-- This code shows how to make a table with data from a csv.

create temporary table relevant_dates
	   (last_busdates date);

\copy relevant_dates (last_busdates) from 'dates.csv' csv header

-- Only include the header option if the CSV has a header row
-- You can also specify a delimiter instead of csv with the delimiter option
