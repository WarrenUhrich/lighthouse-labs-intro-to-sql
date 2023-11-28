SELECT * FROM pets;     -- See all pet data.
SELECT * FROM students; -- See all student data.

SELECT
    name,
    type
FROM pets;

-- Only Mako's Pet(s)
SELECT name, type -- Which columns do we want to see?
FROM pets         -- Which table are we working with?
WHERE student_id = 7; -- Any other filters/rules here.

-- "Pagination!" Only grab groups of your content at a time.

-- Page 1 (5 pets per page)
SELECT name, type
FROM pets
LIMIT 5;

-- Page 2 (5 pets per page)
SELECT name, type
FROM pets
OFFSET 5 -- HOW MANY TO SKIP!
LIMIT 5; -- HOW MANY TO SHOW!

-- Page 4 (5 pets per page)
SELECT name, type
FROM pets
OFFSET 15
LIMIT 5;

-- Page 6 (5 pets per page)
SELECT name, type
FROM pets
OFFSET 25
LIMIT 5;

-- We have a one-to-many... what can we do with this?

SELECT
    students.name AS student_name, -- AS is an alias...
    pets.name AS pet_name -- AS doesn't change the original table, it just changes our output
FROM students -- LEFT  TABLE
JOIN pets     -- RIGHT TABLE
ON students.id = pets.student_id;

-- LEFT JOIN, students are most important and ALL will be displayed!
SELECT
    students.name AS student_name,
    pets.name AS pet_name
FROM students
LEFT JOIN pets
ON students.id = pets.student_id;

-- RIGHT JOIN, pets are most important and ALL will be displayed!
SELECT
    students.name AS student_name,
    pets.name AS pet_name
FROM students
RIGHT JOIN pets
ON students.id = pets.student_id;

-- Order Results

SELECT name FROM pets
ORDER BY name ASC;

-- How many pets each student has?
SELECT
    students.name AS student_name,
    COUNT(pets.id) -- Aggregate function COUNT/AVG
FROM students      -- LEFT
LEFT JOIN pets     -- RIGHT
ON students.id = pets.student_id
GROUP BY students.name;
