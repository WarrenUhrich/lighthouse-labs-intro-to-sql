# Lighthouse Labs | Intro to SQL

* [ ] Databases
* [ ] PostgreSQL
* [ ] Basic SQL Queries

## How are we Storing Info so Far?

* JS Objects
* JSON File

### Pros?

* Ease-of-access (already in JS!)
* Very dynamic, easy to change
* As simple as knowing JS to navigate

### Cons?

* JS Objects are not persistant
* Objects can get complicated very quickly—inconsistent and easy to make mistakes
* Relationships must be decided by developer, hard to enforce
* Hard to scale (files get gigantic as the data grows)
* Performance (compared to DBMS)
* Organizing is up to the developers (can be difficult to refactor)
* Can be harder to access specific data

## Database Management System (DBMS)

Any software specialized in storage, retrieval, creation, and maintenance of data.

## Relational Database Management System (RDBMS)

Any DBMS that follows the relational model. Some examples include:

* PostgreSQL
* Microsoft SQL Server (MSSQL)
* MariaDB
* MySQL

## The Relational Model

* Database: Collection of tables.
* Table: Collection of records.
* Column: A field that can be stored in the table's records.
* Record: An individual entity stored in a table.

Setting up columns?

menu
* id      | integer
* name    | string
* price   | float
* on_sale | boolean

## Why IDs?

* Unique identifier
* Primary key—gives us an easy way to represent this record elsewhere
* Indexing (kept track of in caches)

* Foreign Key

## SQL

SQL stands for Structured Query Language. It is intended to be a (fairly) human-readable way to write instructions for databases. Very, very popular for use across a wide array of RDBMSs.

Syntax:

```SQL

-- A basic SQL query:
SELECT
    name
FROM
    users;

```
