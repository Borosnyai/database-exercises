-- Write a query that returns the names and races of all characters who took part in no event and own nothing.
-- (Requires the RingOwnership table from changes.sql.)

SELECT c.name, c.race
FROM Characters c
WHERE c.id NOT IN (SELECT character_id FROM Participation)
  AND c.id NOT IN (SELECT character_id FROM RingOwnership);
