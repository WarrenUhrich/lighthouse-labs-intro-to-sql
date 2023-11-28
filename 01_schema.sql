-- CREATE DATABASE intro_to_sql;
-- USE intro_to_sql;

CREATE TABLE students(
    id SERIAL PRIMARY KEY, -- Serial = auto-incrementing
    name TEXT
);

CREATE TABLE pets(
    id SERIAL PRIMARY KEY,
    name TEXT,
    type TEXT,
    student_id INTEGER -- One-to-Many relationship
                       -- Student=1 Pets=Many
);