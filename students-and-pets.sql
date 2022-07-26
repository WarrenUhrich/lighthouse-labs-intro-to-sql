-- Pets Name; Type; Age

-- Make a students table:
CREATE TABLE students(
    id SERIAL PRIMARY KEY,
    name TEXT
);

-- Make a pets table:
CREATE TABLE pets(
    id SERIAL PRIMARY KEY,
    name TEXT,
    student_id INTEGER
);

-- Add type column!
ALTER TABLE
    pets
ADD COLUMN
    type text;

-- Adding Students...

INSERT INTO -- 1
    students(name)
    VALUES('Jack');

INSERT INTO -- 2
    students(name)
    VALUES('Hope');

INSERT INTO -- 3
    students(name)
    VALUES('Jackie');

INSERT INTO -- 4
    students(name)
    VALUES('Harinder');

INSERT INTO -- 5
    students(name)
    VALUES('Zachary');

-- Adding Pets...

INSERT INTO
    pets(name, type, student_id)
    VALUES('John', 'Tiger', 1);

INSERT INTO
    pets(name, type, student_id)
    VALUES('Leo', 'Gecko', 2);

INSERT INTO
    pets(name, type, student_id)
    VALUES('Pollo', 'Dog', 3);

INSERT INTO
    pets(name, type, student_id)
    VALUES('Hiro', 'Dog', 2);

INSERT INTO
    pets(name, type, student_id)
    VALUES('Chimney', 'Dragon', 4);

INSERT INTO
    pets(name, type, student_id)
    VALUES('Buddy', 'Cat', 5);

-- Select all students.
SELECT
    *
FROM
    students;

-- Select all pets.
SELECT
    *
FROM
    pets;

-- Select Hope's (id #2) pets.
SELECT
    *
FROM
    pets
WHERE
    student_id = 2;

-- Paginations! LIMIT and OFFSET
-- 2 per page; page 2.
SELECT
    name, type
FROM
    pets
LIMIT
    2
OFFSET
    2;

-- Order By
SELECT
    *
FROM
    pets
ORDER BY
    type;

-- Order By (w/ASC / DESC)
SELECT
    *
FROM
    pets
ORDER BY
    type DESC;

-- Add a couple students with no pets.

INSERT INTO -- 6
    students(name)
    VALUES('Jas');

INSERT INTO -- 7
    students(name)
    VALUES('Daniel');

INSERT INTO -- 8
    students(name)
    VALUES('Malik');

-- INNER JOIN
SELECT
    students.name AS student_name,
    pets.name AS pet_name,
    pets.type
FROM -- LEFT TABLE:
    students
JOIN -- RIGHT TABLE:
    pets
ON   -- THIS CONNECTS OUR 2 tables.
    students.id = pets.student_id;

-- LEFT JOIN
SELECT
    students.name AS student_name,
    pets.name AS pet_name,
    pets.type
FROM      -- LEFT TABLE:
    students
LEFT JOIN -- RIGHT TABLE:
    pets
ON   -- THIS CONNECTS OUR 2 tables.
    students.id = pets.student_id;

-- LEFT JOIN for students with no pets.
SELECT
    students.name AS student_name,
    pets.name AS pet_name,
    pets.type
FROM      -- LEFT TABLE:
    students
LEFT JOIN -- RIGHT TABLE:
    pets
ON   -- THIS CONNECTS OUR 2 tables.
    students.id = pets.student_id
WHERE
    pets.student_id IS NULL;
