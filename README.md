# Lighthouse Labs | Intro to SQL

* [ ] Databases
* [ ] PostgreSQL
* [ ] Basic SQL Queries

## Existing Approach(es)

* (Hard coded) local variable (object / array)
* Read / write txt/json files using `fs` module in Node.js

### Pros to these Approaches

* Very easy to see / manipulate what's in the data-set
* No set-up, no need for any third party convention / packages
* Lot's of freedom
* Maybe its less code?
* Does not require knowledge of another language (SQL)

### Cons to these Approaches

* Large database means huge files
* Huge headache trying to maintain a consistent structure
* Potentially insecure, stored as text
* In the case of hard-coded / variable approach, data is lost every time the server was reset
* Can be harder to pull info reliably depending on how it is structured / stored
* Harder to organize... prone to error!
* JavaScript is not specialized in parsing enormous data-sets
    * You can see performance hits compared to software designed for this purpose

## Why Make the Leap to a DBMS? (DataBase Management System)

* Higher performance
* Consistency
* DBMSs are specialized for data management and manipulation and are INCREDIBLY efficient / optimized for this

## RDBMS (Relational Database Management System)

Any Database Management System that follows the relational model.

* PostgreSQL
* Microsoft SQL Server (MSSQL)
* MariaDB
* MySQL
* Oracle

## Relational Model

### Database (Collection)

Collection of tables.

### Table (Relations)

* Columns (Fields, Attributes, Properties)
* Rows (Entities, Records)

### programming_languages

| **id**    | **name**    | **year** | **description**
|-----------|-------------|----------|----------------
| 1         | HTML        | 1993     | Markup language for website content.
| 2         | CSS         | 1996     | Stylesheet language for visual aspect of web page content.
| 3         | JavaScript  | 1995     | Web page scripting language.
| 4         | Ruby        | 1995     | General purpose and programmer-friendly scripting language.
| 5         | SQL         | 1974     | Language for interacting with database systems.
| 6         | Julia       | 2012     | General purpose high performance scripting language.

## SQL Syntax

```SQL
-- This is a single-line comment!
SELECT * FROM users;
```
