# Lighthouse Labs | Intro to SQL

* [X] Databases
* [ ] PostgreSQL
* [ ] Basic SQL Queries

## Our Existing Approach(es)

* (In-memory) JSON-formatted data
    * Variable
* Cookies (are tied to a browser)
* FS (writing to file)

### Pros

* Easy to access / work with (variables)
* No need for more software (work with what ya' have!)
* Good for testing, start from scratch each run
* Great for quick experimentation!

### Cons

* We lose data when we restart the app... (variable)
    * Crashing is a huge concern
* Hard to scale properly
* (variables) limited by memory (cannot store a lot)
* Security can be a big concern (need correct permissions if using fs)
* Even `fs` isn't the most efficient for data reading / manipulation, especially for larger data sets
* No consistency / standard for format of storage (difficult for teams)

## DBMS (Database Management System)

Any software specialized in maintaining a database.

* Higher performance
* Have consistent syntax / convention
* Scale
* Have security built-in

## RDBMS (Relational Database Management System)

A DBMS that follows the relational model.

Some examples of RDBMS:

* PostgreSQL
* Microsoft SQL Server (MSSQL)
* MariaDB
* MySQL
* Oracle


TABLE:  restaurant_menu
COLUMN: id     | price  |     menu_item

RECORD: 1      | 5      |     Big Boy 
RECORD: 2      | 8      |     Salad 

TABLE:  employees
COLUMN: name        |  dob         | fav_menu_item

RECORD: Bob         | 1982-10-05   | 2
RECORD: Sam         | 1974-11-16   | 1

* Database / Collection of Tables
* Table (Represents Stored Entities / Records)
* Columns / Field (the format / type of data stored per table)
* Records / Entities / Rows (individual entities in a table)

## PostgreSQL

Is an open-source RDBMS that is free-to-use. It follows the popular Structured Query Language (SQL) for communicating with it. There are popular npm packages that make it easy to work with PostgreSQL!

## SQL

```SQL
-- comments begin with two hyphens / dashes.
-- common practice is to ALL CAPS every keyword to make them stand out.
SELECT * FROM employees;
```

## Our Next Goals

* Collect some data from you so we can build a simple DB
* Practice queries with this DB

### Pets!???

TABLE:  students
        PK
COLUMN: id | name




TABLE:  pets
        PK (primary key)                       FK (foreign key)
COLUMN: id | type | colour | name | cuteness | student_id


