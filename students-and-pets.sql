--
-- SCHEMA:
--

CREATE DATABASE intro_to_sql;

CREATE TABLE students( -- Name of table.
    -- What columns do we want/need?
    id SERIAL PRIMARY KEY, -- Auto-incrementing Integer
    name TEXT -- DB String
);

-- To make a new student row/record, we need a NAME.

CREATE TABLE pets(
    id SERIAL PRIMARY KEY,
    student_id INTEGER, -- Foreign Key! Points at PK of students.
    name TEXT,
    type TEXT,
    age INTEGER,
    colour TEXT
);

-- To make a new pet row/record we need a STUDENT_ID, NAME, TYPE, AGE, COLOUR.

--
-- SEEDS:
--

INSERT INTO students(name)
VALUES('Warren Uhrich'); -- id: 1
INSERT INTO pets(student_id, name, type, age, colour)
VALUES(1, 'Quorra', 'Dog', 3, 'Black & Tan'); -- id: 1

INSERT INTO students(name)
VALUES('Eric'); -- id: 2
INSERT INTO pets(student_id, name, type, age, colour)
VALUES(2, 'Pumpkin', 'Dog', 5, 'Yellow');

INSERT INTO students(name)
VALUES('Rylan'); -- id: 3
INSERT INTO pets(student_id, name, type, age, colour)
VALUES(3,'Vinny', 'Dog', 1, 'Red Merle');

INSERT INTO students(name)
VALUES('Jake Tattersall'); -- id: 4
INSERT INTO pets(student_id, name, type, age, colour)
VALUES(4, 'Chippy', 'Wild squirrel', 10, 'patchy grey'); -- pet id: 4

INSERT INTO students(name)
VALUES('Daniel'); -- id: 5
INSERT INTO pets(student_id, name, type, age, colour)
VALUES(5, 'Titania', 'Fish', 7, 'Orange & White'); -- pet id: 5

INSERT INTO students(name)
VALUES('Victoria Lane'); -- id: 6
INSERT INTO pets(student_id, name, type, age, colour)
VALUES
    (6, 'Noya', 'Cat', 3, 'Tabby & White'), -- pet id: 6
    (6, 'Pippin', 'Cat', 2, 'Black');       -- pet id: 7

INSERT INTO students(name)
VALUES('Evangelos Benak'); -- id: 7
INSERT INTO pets(student_id, name, type, age, colour)
VALUES(7, 'Roxy', 'Dog', 13, 'Blonde'); -- pet id: 8

INSERT INTO students(name)
VALUES('Guest'); -- id: 8 (NO PET!)

--
-- QUERIES:
--

SELECT * FROM pets; -- Select ALL columns!
SELECT name, type, age, colour FROM pets; -- Select SPECIFIC columns!

-- We want all the pets for one student.
SELECT
    name, type, age, colour
FROM pets
WHERE student_id = 6; -- Our Foreign Key!! (FK)

-- We want pets age 4 or younger.
SELECT
    name, age
FROM pets
WHERE age <= 4;

-- INNER JOIN -- JOINS help us query multiple tables in one query.
-- INNER JOIN only shows results where neither side is NULL.
SELECT
    students.id AS student_id,
    pets.id AS pet_id,
    students.name AS student_name, -- AS = ALIAS name.
    pets.name AS pet_name,
    pets.type
-- "LEFT" table.
FROM students
-- "RIGHT" table.
JOIN pets
-- HOW are these two RELATED?
ON students.id = pets.student_id;

-- LEFT JOIN prioritizes the LEFT table!
SELECT
    students.id AS student_id,
    pets.id AS pet_id,
    students.name AS student_name, -- AS = ALIAS name.
    pets.name AS pet_name,
    pets.type
-- "LEFT" table.
FROM students
-- "RIGHT" table.
LEFT JOIN pets
-- HOW are these two RELATED?
ON students.id = pets.student_id;

-- RIGHT JOIN prioritizes the RIGHT table!
SELECT
    students.id AS student_id,
    pets.id AS pet_id,
    students.name AS student_name, -- AS = ALIAS name.
    pets.name AS pet_name,
    pets.type
-- "LEFT" table.
FROM students
-- "RIGHT" table.
RIGHT JOIN pets
-- HOW are these two RELATED?
ON students.id = pets.student_id;

-- ORDER BY -> allows us to organize/order our results.
SELECT name FROM pets
ORDER BY name ASC;

SELECT name, age FROM pets
ORDER BY age DESC;

-- PAGINATION!
-- OFFSET: how many records to skip over.
-- LIMIT: how many records to include in our result.

SELECT * FROM pets;

SELECT * FROM pets LIMIT 3; -- "Page 1"

SELECT *
FROM pets
OFFSET 3
LIMIT 3; -- "Page 2"

SELECT *
FROM pets
OFFSET 6
LIMIT 3; -- "Page 3" / last page

-- AGGREGATE FUNCTIONS
-- GROUP BY / grouping data

SELECT
    students.name,
    -- EVERY time you use an aggregate function
    -- use an ALIAS!
    COUNT(pets.id) AS number_of_pets
FROM students
JOIN pets
ON students.id = pets.student_id
GROUP BY students.id;

SELECT
    SUM(pets.age) AS total_age
FROM pets;
