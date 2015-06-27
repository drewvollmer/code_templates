-- pass_date_argument.sql

-- Example call:
-- psql -h db -d s -f file.sql -v dtstamp="\'20140207-1500\'"

create temporary table temp_filtered_on_date as
(
    -- Use a with clause to get the run time in SQL format
    with vars as (select substr(:dtstamp,1,4)||'-'||substr(:dtstamp,5,2)||'-'||substr(:dtstamp,7,2)
                         ||' '||substr(:dtstamp,10,2)||':'||substr(:dtstamp,12,2)||':00' as runtime)
    select *
    from table
    where table.date = (select runtime::timestamp from vars)
);
