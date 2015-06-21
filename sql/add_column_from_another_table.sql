-- This code demonstrates how to add columns to a table from
-- another table, joining them on some criteria

-- First, add the columns you want to import as null entries
-- in the destination table

alter table destination_table
      add column price numeric,
      add column duration numeric;

-- Second, update these columns based on the values in the
-- table containing the desired data. Join the tables in
-- a where clause.

update destination_table as dest
	   set price = origin.price,
	       duration = origin.duration
	   from origin_table as origin
	   where origin.date = dest.date;
