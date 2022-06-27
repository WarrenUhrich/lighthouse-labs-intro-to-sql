-- This is a comment!

-- Make a students table.
CREATE TABLE students(
    id SERIAL PRIMARY KEY,
    name TEXT
);

-- Make a pets table.
CREATE TABLE pets(
    id SERIAL PRIMARY KEY,
    name TEXT,
    type TEXT,
    student_id INTEGER
);

INSERT INTO
    students(name)
    VALUES('Tyree');
INSERT INTO
    pets(name, type, student_id)
    VALUES('Kaiser', 'dog', 1);

INSERT INTO
    students(name)
    VALUES('Jesse');
INSERT INTO
    pets(name, type, student_id)
    VALUES('Axl', 'dog', 2);

INSERT INTO
    students(name)
    VALUES('Jeff');
INSERT INTO
    pets(name, type, student_id)
    VALUES('Winston', 'dog', 3);

INSERT INTO
    students(name)
    VALUES('Ava');
INSERT INTO
    pets(name, type, student_id)
    VALUES('Snowie', 'cat', 4);

INSERT INTO
    students(name)
    VALUES('Derine');
INSERT INTO
    pets(name, type, student_id)
    VALUES('Sage', 'dog', 5);

INSERT INTO
    students(name)
    VALUES('Kenneth');
INSERT INTO
    pets(name, type, student_id)
    VALUES('Alfred', 'dog', 6);

INSERT INTO
    students(name)
    VALUES('Phil');
INSERT INTO
    pets(name, type, student_id)
    VALUES('Lucy', 'dog', 7);
INSERT INTO
    pets(name, type, student_id)
    VALUES('Lui', 'cat', 7);

-- Selecting data!
SELECT * FROM students;
SELECT * FROM pets;

-- Basic WHERE
SELECT
    name, type
FROM
    pets
WHERE
    student_id = 7;

-- LIMIT / OFFSET
SELECT
    name
FROM
    pets
LIMIT -- Number of results to query for.
    3
OFFSET -- Number of results to skip!
    2;

-- ORDER BY
SELECT
    name
FROM
    students
ORDER BY
    name DESC;

-- Add a couple of students without pets to test joins!
INSERT INTO
    students(name)
    VALUES('Payam');
INSERT INTO
    students(name)
    VALUES('Salma');

-- INNER JOIN
SELECT
    students.name,
    pets.name,
    pets.type
FROM
    students
JOIN -- Which table to JOIN (on right.)
    pets
ON -- Which column should match?
    students.id = pets.student_id;

-- LEFT JOIN
SELECT
    students.name,
    pets.name,
    pets.type
FROM
    students
LEFT JOIN -- Which table to JOIN (on right.)
    pets
ON -- Which column should match?
    students.id = pets.student_id
WHERE
    pets.student_id IS NULL;
