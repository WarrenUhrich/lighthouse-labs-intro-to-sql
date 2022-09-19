-- students: id, name
-- pets: id, student_id, name, age, type

-- Which table are we creating?
CREATE TABLE students(
    -- Which columns should the students table have?
    id SERIAL PRIMARY KEY,
    name TEXT
);

INSERT INTO students(name)
    VALUES
        ('Shaun'), -- 1
        ('Nicholas'), -- 2
        ('Kenia'), -- 3
        ('Nick'), -- 4
        ('Nabil'), -- 5
        ('Dwayne'), -- 6
        ('Michael'), -- 7
        ('Coreen'), -- 8
        ('Tommy'), -- 9
        ('Warren'), -- 10
        ('Shelly'), -- 11
        ('Mohamed');  -- 12

CREATE TABLE pets(
    id SERIAL PRIMARY KEY,
    student_id INTEGER,
    name TEXT,
    age INTEGER,
    type TEXT
);

INSERT INTO pets(student_id, name, age, type)
    VALUES
        (1, 'Shelby', 3, 'dog'),
        (2, 'Lillie', 10, 'dog'),
        (3, 'Mel', 5, 'dog'),
        (4, 'Bonita', 2, 'dog'),
        (5, 'Elli', 15, 'tortoise'),
        (6, 'Jack', 10, 'tortoise'),
        (7, 'Strawberry', 13, 'cat'),
        (8, 'Francois', 23, 'turtle'),
        (9, 'Rocky', 28, 'dog'),
        (10, 'Quorra', 2, 'dog'),
        (10, 'Fishes', 5, 'fish');

-- Basic selections
SELECT * FROM students;
SELECT name, type FROM pets;

-- Use a foreign key to identify a specific pet (or pets.)
SELECT name, type
FROM pets
WHERE student_id = 6; -- Dwayne

SELECT name, type, age
FROM pets
WHERE student_id = 10 AND age > 3; -- Warren

-- Pagination; let's assume 4 per page, page 3.
SELECT name, type, age
FROM pets
OFFSET 8 -- Skip the first 2 'pages' (2*4)
LIMIT 4; -- Show only 4 per 'page'.

-- Ordering results?
SELECT * FROM students
ORDER BY name DESC;

-- INNER JOIN
SELECT students.name AS student_name, pets.name AS pet_name, pets.type, pets.age
FROM students -- LEFT TABLE
JOIN pets -- RIGHT TABLE
ON students.id = pets.student_id; -- JOIN condition


-- LEFT JOIN
SELECT students.name AS student_name, pets.name AS pet_name, pets.type, pets.age
FROM students -- LEFT TABLE
LEFT JOIN pets -- RIGHT TABLE
ON students.id = pets.student_id; -- JOIN condition

-- LEFT JOIN (with NULL check) - Students with NO pets
SELECT students.name
FROM students -- LEFT TABLE
LEFT JOIN pets -- RIGHT TABLE
ON students.id = pets.student_id -- JOIN condition
WHERE pets.student_id IS NULL;  -- If NO PET is assigned (undefined) show us the result
