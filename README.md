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
