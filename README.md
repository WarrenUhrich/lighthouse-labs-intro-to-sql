# Lighthouse Labs | Intro to SQL

* [X] Databases
* [X] PostgreSQL
* [X] Basic SQL Queries

## How (so far) Do We Store Data in our Apps?

* In-memory! (via variables)
* (Maybe sometimes files via NodeJS' `fs` module)

### Cons? What set us back using memory?

* Not persistant - disappears when we shutdown the server.
* Difficult to save / share this data - between files
* No consistent format - difficult to organize (esp. when big)
* Adds code file bloat
* Lack of separation of concerns
* Limited to the RAM / memory afforded by the hardware
* Prone to duplication

### Pros? What was cool about using variables in-memory?

* Quick and easy to set-up!!
* Can be faster to read/write from memory
* Easy to retreive and work with - it is all JS this way!
* "Just works," no need for other software/packages/etc.

## Databases (a way to store data)

* Higher performance
* More consistent, safer handling of data

## DBMS - Database Management System

Software we use to store data and work with relational databases.

* PostgreSQL
* Microsoft SQL Server (MSSQL)
* MariaDB
* MySQL
* Oracle

## Relational Database



restaurant (database)

menu_items (table)
----------
id        name           price        sale (columns, fields)
===========================================
4         Big Boy        1025         true (rows, records, entities)
5         Salad           550         false

employees (table)
---------
id        name       dob           position   favourite_menu_item
=================================================================
1         Sam        1994-03-14    fry cook   4
2         Quinn      1982-06-12    manager    5

### The Relational Database Model:

* Database / Collection (contains many tables)
* Table (has columns/format for its records)
    * Columns, Fields that rows must adhere to
* Rows / Records / Entities

Primary Key - the main unique identifier for information in a particular table.

Foreign Key - represents a record in another table (references that other table's PK.)

## SQL (Structured Query Language)

Developed in the 1970s as a human-readable way to interact with data.

* DDL - Data Definition Language
    * When we are setting up our database, tables, and columns
* DML - Data Manipulation Language
    * Requesting, organizing, storing, editing, deleting data

```SQL

-- This is an SQL comment!
-- They are only 1-line...
-- ...so if you want multiple lines, you'll need a lot of dashes.
SELECT name FROM authors;

SELECT title
FROM posts;

```
