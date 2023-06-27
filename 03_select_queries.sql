SELECT * FROM pets;
SELECT * FROM students;

SELECT name, type FROM pets;
SELECT name FROM students;

-- Only Vesna's pets... Vesna's ID: 2
SELECT name FROM pets
WHERE student_id = 2;

-- Page one of pets (3 per page)
SELECT name FROM pets
OFFSET 0
LIMIT 3;

-- Page two of pets (3 per page)
SELECT name FROM pets
OFFSET 3 -- Skip 3 rows
LIMIT 3; -- Show only 3 rows

-- Page three of pets (3 per page)
SELECT name FROM pets
OFFSET 6 -- Skip 6 rows
LIMIT 3; -- Show only 3 rows

-- Page four of pets (3 per page)
SELECT name FROM pets
OFFSET 9 -- Skip 6 rows
LIMIT 3; -- Show only 3 rows

-- Get all students and pets at the same time...?
SELECT 
    students.name AS student_name,
    pets.name AS pet_name
FROM students -- LEFT TABLE
JOIN pets     -- RIGHT TABLE
ON students.id = pets.student_id; -- What to glue the tables together based on.

-- ORDER BY
SELECT * FROM pets
ORDER BY name DESC;

-- Let's say we want to know how many pets each student has...
SELECT 
    students.name AS student_name,
    COUNT(pets.id)     -- Aggregate Function
FROM students -- LEFT TABLE
JOIN pets     -- RIGHT TABLE
ON students.id = pets.student_id
GROUP BY students.name;

-- Add Tagel to students table:
INSERT INTO students(name) VALUES('Tagel');

-- Example left join:
SELECT 
    students.name AS student_name,
    pets.name AS pet_name
FROM students -- LEFT TABLE
LEFT JOIN pets     -- RIGHT TABLE
ON students.id = pets.student_id;
