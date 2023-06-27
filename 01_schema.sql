-- CREATE DATABASE intro_to_sql;

-- USE intro_to_sql;

CREATE TABLE students(
    id SERIAL PRIMARY KEY, -- serial is an INTEGER that auto-increments
    name TEXT -- TEXT is a string of characters
);

CREATE TABLE pets(
    id SERIAL PRIMARY KEY, -- serial is an INTEGER that auto-increments
    name TEXT, -- TEXT is a string of characters
    breed TEXT,
    type TEXT,
    age INTEGER,
    student_id INTEGER
    -- FOREIGN KEY (student_id) REFERENCES students(id)
);
