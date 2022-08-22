-- students: name
-- pets: student_id, name, type, age

CREATE TABLE students(
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE pets(
    id SERIAL PRIMARY KEY,
    student_id INTEGER,
    name TEXT,
    type TEXT,
    age INTEGER
);

-- Populate students + pets.

INSERT INTO -- 1
    students(name)
    VALUES('Bailee');
INSERT INTO -- 1
    pets(student_id, name, type, age)
    VALUES(1, 'Dolly', 'dog', 3);

INSERT INTO -- 2
    students(name)
    VALUES('Dani');
INSERT INTO -- 2
    pets(student_id, name, type, age)
    VALUES(2, 'Karma', 'cat', 16);

INSERT INTO -- 3
    students(name)
    VALUES('Jeffrey');
INSERT INTO -- 3
    pets(student_id, name, type, age)
    VALUES(3, 'Reese', 'dog', 7);

INSERT INTO -- 4
    students(name)
    VALUES('Cera');
INSERT INTO -- 4
    pets(student_id, name, type, age)
    VALUES(4, 'Mojo', 'dog', 14);
INSERT INTO -- 5
    pets(student_id, name, type, age)
    VALUES(4, 'Moxxy', 'dog', 4);
INSERT INTO -- 6
    pets(student_id, name, type, age)
    VALUES(4, 'Brandy', 'cat', 14);


INSERT INTO -- 7
    pets(student_id, name, type, age)
    VALUES(1, 'Daddy-oh''s', 'fishes', 1);

INSERT INTO -- 5
    students(name)
    VALUES('Paige');
INSERT INTO -- 8
    pets(student_id, name, type, age)
    VALUES(5, 'Totino', 'cat', 7);


INSERT INTO -- 6
    students(name)
    VALUES('Daniel');

INSERT INTO -- 7
    students(name)
    VALUES('Jeffrey');

INSERT INTO -- 8
    students(name)
    VALUES('Bahar');

-- 

SELECT * FROM students;
SELECT * FROM pets;

-- Use FK; retrieve all of Cera's pets!

SELECT name, type, age
FROM pets
WHERE student_id = 4;

SELECT name
FROM pets
WHERE type = 'dog';

SELECT name, type
FROM pets
WHERE age > 5;

-- Pagination Example (LIMIT, OFFSET)

SELECT name, type, age
FROM pets
WHERE student_id = 4
LIMIT 2
OFFSET 1;

-- We can order results

SELECT * FROM students
ORDER BY name ASC;

SELECT * FROM pets
ORDER BY type ASC;

-- INNER JOIN

SELECT
    students.name AS student_name,
    pets.name AS pet_name,
    pets.type
FROM -- LEFT
    students
JOIN -- RIGHT
    pets
ON -- How do we want to join these?
    students.id = pets.student_id;

-- LEFT JOIN

SELECT
    students.name AS student_name,
    pets.name AS pet_name,
    pets.type
FROM -- LEFT
    students
LEFT JOIN -- RIGHT
    pets
ON -- How do we want to join these?
    students.id = pets.student_id;

-- Students with no pets

SELECT
    students.name AS student_name,
    pets.name AS pet_name,
    pets.type
FROM -- LEFT
    students
LEFT JOIN -- RIGHT
    pets
ON -- How do we want to join these?
    students.id = pets.student_id
WHERE
    pets.student_id IS NULL;
