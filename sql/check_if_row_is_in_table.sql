-- check_if_row_is_in_table.sql
-- SQL is excellent at seeing if individual scalars are in a table, but it is trickier
-- to check if an entire row is present in a SQL table.  In cases where we don't care if
-- object A is in a table or object B is in a table, but we are concerned if the pair (A,B)
-- exists for any row in that table, use this code:

-- Apply the exists command to return true when the subquery returns a row and false
-- when it does not.  In this example, I want to see if there are
-- date/identifier pairs that exist in the first table that are not in the second.  The subquery
-- within the exists statement returns true whenever a date/identifier combination is found in
-- the second table.  When there is no value to return (i.e. exists returns false), then
-- the date/identifier combo did not exist in the second table and it is selected in the
-- overall expression.
select distinct sq.identifier, sq.date from temp_raw as sq where not 
	   exists(select true from temp_sas_data as sa 
	   	      where (sq.identifier = sa.identifier and sq.date = sa.quote_date));
