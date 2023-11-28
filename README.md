# Lighthouse Labs | Intro to SQL

* [ ] Databases
* [ ] PostgreSQL
* [ ] Basic SQL Queries

https://www.postgresqltutorial.com/ :)

## Our Existing Approach to Storing Data in our Back-end

* JSON/text File in the project!
* As a variable (object/array!)

Pros:
* Easy! No new learning/programs to worry about!
* Built right into the project
* Good for debugging/experimenting
* Familiar!

Cons:
* Variables do not persist!
* No consistency or interface in data-handling...
* Not as efficient...
    * JS / file-reading aren't specialized for large data-sets

## Database Management System (DBMS)

A program / specialized software that helps us with efficient, consistent, and structured handling of data. We adopt this for performance, and all of the above!

## Relational Model

Database:             Restaurant

Table Name:           Menu Items
Table Columns/Fields: ID | Name           | Price | Sale
                      ------------------------------------
Table Rows/Records:   1  | Big Boy Burger | 5.50  | true
                      2  | Caesar Salad   | 3.85  | false
                      ^ Primary Key (PK)

Table Name:           Employees
Table Columns/Fields: ID | Name    | Pay   | Position | Menu_Item_Id
                      ----------------------------------------------
Table Rows/Records:   1  | Quinn   | 12.00 | Linecook | 1
                      2  | Sam     | 16.00 | Manager  | 1
                      ^ Primary Key (PK)                ^ Foreign Key (FK)

## Relational Database Management System (RDBMS)

A program / specialized software that follows the relational model that helps us with efficient, consistent, and structured handling of data. We adopt this for performance, and all of the above!

* Database/Collection (Collection of Related Tables)
* Table/Relation (Collection of Related Records)
* Record/Rows (Collection of Related Fields/Columns)

A few examples of DBMSs include:

* MySQL
* MariaDB
* MSSQL
* PostgreSQL
* SQLite3

Each of the above is a program that can help us run a database! Each reserves its right to have its own commands, features, and way of doing things though. They all have the relational model in common!

## PostgreSQL Best-Practice

Table names should be `snake_case`.
Table names should be plural.

Column names should be `snake_case`.

## Basic SQL Syntax

```SQL

-- A comment!
-- Each comment is one-line 👍

SELECT * FROM menu_items;

sElEcT * fRoM users;

```
