SELECT name
FROM Customer
WHERE referee_id != 2 
OR referee_id IS NULL;

--Use IS NULL to catch customers who have no referee at all.
-- Use != 2 or <> 2 to catch customers referred by anyone other than ID 2.
