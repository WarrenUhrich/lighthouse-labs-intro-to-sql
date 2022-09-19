# Lighthouse Labs | Intro to SQL

* [ ] Databases
* [ ] PostgreSQL
* [ ] Basic SQL Queries

## Current Approaches throughout LHL?

* Saving to local variables
    * Pros?
        * Fast and easy to implement!
        * Low barrier for entry.
    * Cons?
        * Not persistant... once the program closes that info is gone.
        * No organization—no tools / convention for structure.
        * Storage size is limited to available memory.
* Saving to a file (`fs` module)
    * Pros?
        * Persistant storage (maintained between loads.)
        * Fast and easy to implement!
        * Low barrier for entry.
    * Cons?
        * No organization—no tools / convention for structure.
        * Speed could be a concern?
        * Storage capacity?
        * Less scalable; what happens when it gets large?

## DBMS (DataBase Management System)

### Pros?

* Higher performance
* More convention / organization
* Dedicated space
* Security / account / role features
* More reproducable
* Used everywhere

### Cons?

* Learning curve (have to learn how the DBMS works)
* Have to be precise
* Have to take the time to set it up / plan it out

## RDBMS (Relational Database Management System)

Some examples of DBMSs, include:

* PostgreSQL
* Microsoft SQL Server (MSSQL)
* MariaDB
* MySQL
* Oracle

## Relational Model

### Has a few Important Components:

* Database (collection of tables)
* Tables (define the columns allowed in its records)
* Records / row (an individual entity, or entry in the table)

DATABASE: programming

TABLE_1: programming_languages
    COLUMN_1: name
    COLUMN_2: year

TABLE_2: users
    COLUMN_1: username
    COLUMN_2: password

programming_languages

name | year
-----|-----
Ruby | 1995
HTML | 1993
JS   | 1995

users

username | password
---------|---------
user123  | 34234234
user456  | 54235345


### programming_languages

| **id**    | **name**    | **year** | **description**
|-----------|-------------|----------|----------------
| 1         | HTML        | 1993     | Markup language for website content.
| 2         | CSS         | 1996     | Stylesheet language for visual aspect of web page content.
| 3         | JavaScript  | 1995     | Web page scripting language.
| 5         | SQL         | 1974     | Language for interacting with database systems.
| 6         | Julia       | 2012     | General-purpose, great for stats.

## Primary Key

Primary keys or PKs are unique identifiers. They should not be changed over time, for consistency.

## Foreign Key

Foreign keys or FKs point to the Primary Key of another table—establishing a relationship.

## SQL Syntax

```SQL
-- An SQL comment.
SELECT * FROM users;
```

Pet name, age, type
   Quorra, 2, dog
