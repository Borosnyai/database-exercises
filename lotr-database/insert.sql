INSERT INTO Characters (name, race, weapon, affiliation)
VALUES 
    ('Frodo Baggins', 'Hobbit', 1, 'Good'),
    ('Aragorn', 'Human', 1, 'Good'),
    ('Legolas', 'Elf', 1, 'Good'),
    ('Gimli', 'Dwarf', 1, 'Good'),
    ('Gandalf', 'Wizard', 1, 'Good'),
    ('Sauron', 'Maia', 1, 'Evil'),
    ('Saruman', 'Wizard', 1, 'Evil'),
    ('Gollum', 'Hobbit', 0, 'Neutral');

SELECT * FROM "Characters" c ;

INSERT INTO Places (name, region, description)
VALUES 
    ('Shire', 'Eriador', 'Home of the hobbits, a peaceful land.'),
    ('Rivendell', 'Eriador', 'Refuge of the elves, the house of Elrond.'),
    ('Moria', 'Misty Mountains', 'Ancient dwarf mines, home of the Balrog.'),
    ('Helm''s Deep', 'Rohan', 'One of the greatest fortresses of Rohan.'),
    ('Mordor', 'East', 'Sauron''s realm, the centre of evil.'),
    ('Mount Doom', 'Mordor', 'Mount Doom, where the Ring was forged.');


   
 
INSERT INTO Battles (name, place_id, date)
VALUES 
    ('Battle of Helm''s Deep', 4, '3019-03-03'),
    ('Battle of Pelennor Fields', 5, '3019-03-15'),
    ('Siege of Minas Tirith', 5, '3019-03-09'),
    ('Battle of the Black Gate', 5, '3019-03-25');


 INSERT INTO Participation (character_id, battle_id, outcome)
VALUES 
    (2, 1, 'Victory'),  -- Aragorn fought at Helm's Deep and won
    (3, 1, 'Victory'),  -- Legolas fought at Helm's Deep and won
    (4, 1, 'Victory'),  -- Gimli fought at Helm's Deep and won
    (2, 2, 'Victory'),  -- Aragorn fought at the Pelennor Fields and won
    (5, 3, 'Victory'),  -- Gandalf fought at the siege of Minas Tirith
    (6, 4, 'Defeat');   -- Sauron ultimately lost at the Black Gate
