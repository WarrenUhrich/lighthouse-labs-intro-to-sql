# Lighthouse Labs | Intro to SQL

* [ ] Databases
* [ ] PostgreSQL
* [ ] Basic SQL Queries

## How We've Storing Data so Far?

* Storing it in an object (in-memory)
    * as a variable
* Files (usually JSON)
    * NodeJS `fs` module

### Pros

* Easy access!
* Lots of control—we can do things our way

### Cons

* As soon as we close our program, we lose all variables!
    * NOT persistant!
* Variables are often limited to the amount of memory (RAM) available!
* Little in terms of convention or enforced format

## Database - Database Management Systems (DBMS)

A DBMS is a software/program that is specialized in high-performance storage and retrieval of data in a consistent format.

## Pros

* Much faster performance (esp. for large data-sets)
* Consistent APIs and commands for handling data
* Consistent formatting of data

## Cons

* More abstract method of interacting with data
* Less direct control over data format and data

## RDBMS (Relational Database Management System)

DATABASE:                  restaurant
* can have many tables

TABLE:                        menu
* can have many columns: define what info can be in the table records
* can have many records: the data stored in the table
COLUMN / FIELD:         id |   price   |     name

RECORD / ENTITY / ROW:   1 |     12    |    Big Boy
RECORD / ENTITY / ROW:   2 |     8     |    Salad

TABLE:                  employees
COLUMN:    name       |    dob      |  hourly_pay   |  position  | favourite_menu_item

RECORD:  Bob Smith    |  1982-01-01 |  12           | frycook    | 2
RECORD:  Alyssa Quinn |  1990-05-02 |  15           | manager    | 1

## RDBMS

These are database management systems that follow the relational model.

* Database
* Table(s)
* Column
* Row

Some examples of RDBMSs:

* PostgreSQL
* MSSQL - Microsoft SQL Server
* MariaDB
* MySQL
* Oracle

## SQL - Structured Query Language

* Originally developed in 1970s to help users interact with RDB
* Sound a lot like English to be more accessible

```SQL

-- Two dashes, minuses, hyphens begin a comment.
-- Assuming we have a table called users.
-- Let's say we want a list of ALL users.
SELECT * FROM users;

-- Keywords are ALL-CAPS / UPPERCASE by convention
-- Each SQL statement/query ends in a semi-colon
-- Asterisks represent "all-of", it is a wildcard

```

## Relationships



## An Example we can Experiment With!

```SQL
CREATE DATABASE intro_to_sql;
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

INSERT INTO students(name) VALUES('Student Name');
INSERT INTO pets(name, type, age, colour)
VALUES('Pet Name', 'Dog', 3, 'Brown');
```
