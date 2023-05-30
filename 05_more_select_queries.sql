-- A list of only Warren's pets?
SELECT *
FROM pets
WHERE student_id = 4;

-- A list of only Nanaya's pets?
SELECT *
FROM pets
WHERE student_id = 2;

-- Only pets with a name of Light
SELECT name, type, colour
FROM pets
WHERE name = 'Light';

-- page 1 of pets (2 per page)
SELECT name, type, age, colour
FROM pets
OFFSET 0
LIMIT 2;

-- page 2 of pets (2 per page)
SELECT name, type, age, colour
FROM pets
OFFSET 2
LIMIT 2;

-- page 3 of pets (2 per page)
SELECT name, type, age, colour
FROM pets
OFFSET 4
LIMIT 2;

-- Order by the type
SELECT * FROM pets
ORDER BY type DESC;

-- Order by the name
SELECT * FROM pets
ORDER BY name;

-- Example INNER JOIN - we can get INFO FROM TWO (2) TABLES AT ONCE!
SELECT
    students.id   AS s_id, -- ALIAS, the result will show our specified COLUMN label
    pets.id       AS p_id,
    students.name AS s_name,
    pets.name     AS p_name
FROM students -- LEFT TABLE
JOIN pets     -- RIGHT TABLE
ON students.id = pets.student_id; -- Join on THIS MATCH

-- Add a student with no pet
INSERT INTO students(name)
VALUES('Raymond Lin');

-- Example LEFT JOIN - we can get INFO FROM TWO (2) TABLES AT ONCE!
SELECT
    students.id   AS s_id, -- ALIAS, the result will show our specified COLUMN label
    pets.id       AS p_id,
    students.name AS s_name,
    pets.name     AS p_name
FROM students      -- LEFT TABLE
LEFT JOIN pets     -- RIGHT TABLE
ON students.id = pets.student_id; -- Join on THIS MATCH


-- only students with no pet
SELECT
    students.id   AS s_id, -- ALIAS, the result will show our specified COLUMN label
    pets.id       AS p_id,
    students.name AS s_name,
    pets.name     AS p_name
FROM students      -- LEFT TABLE
LEFT JOIN pets     -- RIGHT TABLE
ON students.id = pets.student_id
WHERE pets.student_id IS NULL; -- no match found, empty field

-- only students with 2 or more pets

SELECT
    students.id   AS s_id, -- ALIAS, the result will show our specified COLUMN label
    students.name AS s_name,
    COUNT(pets.id) -- Aggregate functions COUNT, AVG, SUM
FROM students -- LEFT TABLE
JOIN pets     -- RIGHT TABLE
ON students.id = pets.student_id
GROUP BY students.id
HAVING COUNT(pets.id) >= 2;

-- JOIN, GROUP BY, HAVING
