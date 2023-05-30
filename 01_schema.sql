-- Schema is the STRUCTURE of our database
-- Used to create DB and tables

-- CREATE DATABASE intro_to_sql;

CREATE TABLE students(
    id SERIAL PRIMARY KEY, -- PK, serial will auto-increment
    name TEXT
);

CREATE TABLE pets(
    id SERIAL PRIMARY KEY,
    name TEXT,
    type TEXT,
    age INTEGER,
    colour TEXT,
    student_id INTEGER -- FK
);
