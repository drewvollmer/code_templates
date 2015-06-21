-- This code demonstrates how to pull aggregate functions for different
-- subsets of a data set in the same select statement.  For example, if you
-- want to get the mean of two subsets of the data and map them by date in
-- a single select statement, then this code would apply.

create temporary table aggregates as
	   (select raw.ledger_date,
	   sum(raw.amount) as total_amount
	   sum(case when t.type_id != 4 then raw.amount else 0 end) as filtered_amount
	   from raw_data as raw
	   join traits as t on (t.id = raw.trait_id)
	   group by raw.date order by date);

-- The key is the case when clause within the aggregate function that allows the selection of a subset
