-- To export for Fame formatting, you will want to include periods in column
-- names, but this is normally impossible in SQL.  Wrap the desired column name
-- in quotation marks as an alias.

select id as "col.one" from example_table limit 5;
