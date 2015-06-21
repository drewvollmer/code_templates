-- create_sequence.sql
-- We can select sequences using the generate_series() function

-- Select an ascending chain:
select i
from generate_series(1, 10) i;

-- Make it a date (from StackOverflow):
select CURRENT_DATE + i
from generate_series(date '2012-06-29'- CURRENT_DATE,
     date '2012-07-03' - CURRENT_DATE ) i;

-- Or more compactly (also from SO):
select i::date from generate_series('2012-06-29',
  '2012-07-03', '1 day'::interval) i;
