PRAGMA foreign_keys = OFF;
DROP TABLE IF EXISTS Characters;
DROP TABLE IF EXISTS Places;
DROP TABLE IF EXISTS Battles;
DROP TABLE IF EXISTS Participation;


CREATE TABLE Characters (
	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	name TEXT NOT NULL,
	race TEXT NOT NULL,
	weapon INTEGER NOT NULL,
	affiliation TEXT NOT NULL
);

CREATE TABLE Places (
	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	name TEXT NOT NULL,
	region TEXT NOT NULL,
	description TEXT NOT NULL
);

CREATE TABLE Battles (
	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	name TEXT NOT NULL,
	place_id INTEGER NOT NULL,
	date TEXT NOT NULL,
	FOREIGN KEY (place_id) REFERENCES Places (id)
);

CREATE TABLE Participation (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    character_id INTEGER NOT NULL,
    battle_id INTEGER, -- NULL for events that are not a battle (e.g. the Ring changing hands)
    outcome TEXT,
    FOREIGN KEY (character_id) REFERENCES Characters(id),
    FOREIGN KEY (battle_id) REFERENCES Battles(id)
);

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

SELECT * FROM Participation p ;
SELECT * FROM "Characters" c ;
SELECT * FROM Battles b ;





