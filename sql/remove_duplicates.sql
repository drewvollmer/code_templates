-- Suppose that you have duplicates by some criterion that you want to discard.
-- In this case, you can group by whatever specification you want to be unqiue
-- (in this case, members) and then delete all but the minimum of the value that
-- varies within the specification you want to be unique.  Here, members is not
-- unique because there exist several IDs per member, but we create a set of the
-- minimum ID for each member and delete all observations not in that set, keeping
-- only one ID per member and thus making member unique in the table.


DELETE FROM members
WHERE ID NOT IN
(
    SELECT MIN(ID)
    FROM members
    GROUP BY name
)
