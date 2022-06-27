# Lighthouse Labs | Introduction to SQL

* [] Databases / Database Management Systems
* [] PostgreSQL
* [] Basic SQL Queries

## DBMS

Database-Management System: Software or template / organization system for storing data.

* Consistent way to store information about (real-world entities)
* Higher performance
* Specialized software
* More scalable for larger data sets

## RDBMS

Common examples include:

* MySQL
* Microsoft SQL Server
* MariaDB
* PostgreSQL

Relational Database Management Systems...

* Real-world (and digital) entities are often related
* Consistent way of organizing our data

## Database / Collection

A list of tables (entities.)

## Tables

A list of records. Each table can have set attributes, to enforce a consistent format for its records.

menu_items
==========
name   / price /
----------------
burger / 2.00  /
fries  / 5.00  /

--

### programming_languages

| **id**    | **name**    | **year** | **description**
|-----------|-------------|----------|----------------
| 1         | HTML        | 1993     | Markup language for website content.
| 2         | CSS         | 1996     | Stylesheet language for visual aspect of web page content.
| 3         | JavaScript  | 1995     | Web page scripting language.
| 4         | Ruby        | 1995     | General purpose and programmer-friendly scripting language.
| 5         | SQL         | 1974     | Language for interacting with database systems.
| 6         | Julia       | 2012     | General purpose and high-performance scripting language.

```
programming_languages attributes:
    id          | INTEGER
    name        | TEXT(35)
    year        | INTEGER(4)
    description | TEXT(100)
```

## SQL (Structured Query Language)

```
-- This is a comment.
SELECT
    title, content, date_posted
FROM
    blog_articles;
```

CREATE TABLE students(
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE pets(
    id SERIAL PRIMARY KEY,
    student_id INTEGER,
    name TEXT,
    type TEXT
);

INSERT INTO students(name)
VALUES('Ricardo');
INSERT INTO pets(name, type, student_id)
VALUES('Luna', 'dog', 1);

INSERT INTO students(name)
VALUES('Aky');
INSERT INTO pets(name, type, student_id)
VALUES('Mr. Spock', 'cat', 2);
INSERT INTO pets(name, type, student_id)
VALUES('Tali', 'cat', 2);

INSERT INTO students(name)
VALUES('Abigail');
INSERT INTO pets(name, type, student_id)
VALUES('Raven', 'dog', 3);
INSERT INTO pets(name, type, student_id)
VALUES('Artemis', 'cat', 3);

INSERT INTO students(name)
VALUES('Megan');
INSERT INTO pets(name, type, student_id)
VALUES('Miles', 'cat', 4);
INSERT INTO pets(name, type, student_id)
VALUES('Alfie', 'cat', 4);

INSERT INTO students(name)
VALUES('Sae');
INSERT INTO pets(name, type, student_id)
VALUES('Coco', 'dog', 5);

INSERT INTO students(name)
VALUES('Michael');
INSERT INTO pets(name, type, student_id)
VALUES('Freddy', 'cat', 6);

INSERT INTO students(name)
VALUES('Dex');
INSERT INTO pets(name, type, student_id)
VALUES('Mia', 'cat', 7);


student
    id

pets
    student_id (FOREIGN KEY!!!)



SELECT
    students.name,
    pets.name
FROM
    students
JOIN
    pets
ON
    students.id = pets.student_id
ORDER BY
    students.name DESC
LIMIT
    2
OFFSET
    2;

## Types of Joins!

* Inner Join


INSERT INTO students(name) VALUES('Dan');
INSERT INTO students(name) VALUES('Boluwatife');

SELECT DISTINCT
    students.name
FROM
    students
LEFT JOIN
    pets
ON
    students.id = pets.student_id
WHERE
    pets.student_id IS NOT NULL;
