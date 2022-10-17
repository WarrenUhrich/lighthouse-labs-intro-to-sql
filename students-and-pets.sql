CREATE DATABASE intro_to_sql;

CREATE TABLE students(
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE pets(
    id SERIAL PRIMARY KEY,
    student_id INTEGER,
    name TEXT,
    species TEXT,
    colour TEXT
);

-- Specify columns to insert into
INSERT INTO students(name)
VALUES('Michael Davis'); -- 1
INSERT INTO pets(student_id, name, species, colour)
VALUES(1, 'Nova', 'White Sheppard', 'White');

INSERT INTO students(name) VALUES('Harry Thomas'); -- 2
INSERT INTO pets(student_id, name, species, colour)
VALUES(2, 'Roger', 'Cat', 'Orange');

INSERT INTO students(name) VALUES('Evan'); -- 3
INSERT INTO pets(student_id, name, species, colour)
VALUES(3, 'Whiskey', 'Cat', 'Grey');

INSERT INTO students(name) VALUES('Jillian Aubrey'); -- 4
INSERT INTO pets(student_id, name, species, colour)
VALUES
  (4, 'Dawson', 'Cat', 'Grey/White'),
  (4, 'Koshu', 'Cat', 'Grey/White');


INSERT INTO students(name) VALUES('Jae Yun Jeong'); -- 5
INSERT INTO pets(student_id, name, species, colour)
VALUES(5, 'Candy', 'Toy Poodle', 'White');

INSERT INTO students(name) VALUES('Anittan K'); -- 6

INSERT INTO students(name) VALUES('Usama Muhamamd'); -- 7
INSERT INTO pets(student_id, name, species, colour)
VALUES(7, 'Gizmo', 'Cat', 'Brown');

INSERT INTO students(name) VALUES('Spencer Cole'); -- 8
INSERT INTO pets(student_id, name, species, colour)
VALUES(8, 'Kipper', 'Airedale', 'Black-Rust');

INSERT INTO students(name) VALUES('Vinson Wong'); -- 9
INSERT INTO pets(student_id, name, species, colour)
VALUES(9, 'Tokyo', 'Ragdoll Cat', 'White/Brown');

INSERT INTO students(name) VALUES('Jordan Guerroro Martinez'); -- 10


INSERT INTO students(name) VALUES('Nicholas Kovacs'); -- 11
INSERT INTO pets(student_id, name, species, colour)
VALUES(11, 'Shadow', 'Cat', 'Black');

INSERT INTO students(name) VALUES('Jeremy Buist'); -- 12
INSERT INTO pets(student_id, name, species, colour)
VALUES(12, 'Willow', 'Labrador', 'Yellow');

INSERT INTO students(name) VALUES('William Gadd'); -- 13
INSERT INTO pets(student_id, name, species, colour)
VALUES(13, 'Hero', 'Golden Shephard', 'Yellow');

INSERT INTO students(name) VALUES('Kate'); -- 14
INSERT INTO pets(student_id, name, species, colour)
VALUES(14, 'Mika', 'Cat', 'Calico');

-- SELECT
SELECT * FROM students;
SELECT name, species, colour FROM pets;

-- SELECT based on student???
SELECT name FROM students
WHERE id = 4;
SELECT name FROM pets
WHERE student_id = 4;

-- INNER JOIN
SELECT
    students.name AS student_name,
    pets.name AS pet_name,
    pets.species,
    pets.colour
-- LEFT TABLE
FROM students
-- RIGHT TABLE
JOIN pets
-- How do these tables RELATE!?
ON students.id = pets.student_id;

-- LEFT JOIN
SELECT
    students.name AS student_name,
    pets.name AS pet_name,
    pets.species,
    pets.colour
-- LEFT TABLE
FROM students
-- RIGHT TABLE
LEFT JOIN pets
-- How do these tables RELATE!?
ON students.id = pets.student_id;

-- Pagination
SELECT * FROM pets
OFFSET 4 -- Page Num * Limit
LIMIT 4;
