-- add_id_column.sql
-- ID columns are a convenient way to remove duplicates, etc. by creating a natural ordering among
-- rows that can be grouped together.

alter table temp_test
	  add column id serial;
