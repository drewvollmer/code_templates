-- window_functions.sql
-- Using windows to aggregate over subsets relative to the current observation's traits

-- Consult http://www.postgresql.org/docs/9.1/static/tutorial-window.html
-- The crux is that we can choose some aggregate for a specific column value, like CUSIP,
-- and display it for all CUSIPs in a single table
