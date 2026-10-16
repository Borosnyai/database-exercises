-- Task 2: Who is a hobbit and owns the Ring?
SELECT name FROM Characters WHERE race = 'Hobbit' AND name = 'Frodo Baggins';

-- Task 3: The Ring passes to Gandalf (INSERT)
INSERT INTO Participation (character_id, battle_id, outcome) VALUES
    ((SELECT id FROM Characters WHERE name = 'Gandalf'), NULL, 'Received Ring');

-- Task 6: Characters who took part in specific events
SELECT c.name, c.race
FROM Characters c
JOIN Participation p ON c.id = p.character_id
WHERE p.battle_id = (SELECT id FROM Battles WHERE name = 'Battle of Helm''s Deep');

