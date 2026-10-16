-- Write a query that returns the names and races of all characters who took part in no event and own nothing.

SELECT c.name, c.race, b.name AS battle_name
FROM Characters c
JOIN Participation p ON c.id = p.character_id
JOIN Battles b ON p.battle_id = b.id
WHERE b.name = 'Battle of Helm''s Deep';
