-- setting pet.student_id to 1 for pet #1
UPDATE pets
SET student_id = 1
WHERE id = 1;

UPDATE pets
SET student_id = 2
WHERE id = 2;

UPDATE pets
SET student_id = 3
WHERE id = 3;

UPDATE pets
SET student_id = 4 -- these 3 belong to student 4
WHERE id = 4;

UPDATE pets
SET student_id = 4 -- these 3 belong to student 4
WHERE id = 5;

UPDATE pets
SET student_id = 4 -- these 3 belong to student 4
WHERE id = 6;
