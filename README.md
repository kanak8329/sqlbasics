https://github.com/kanak8329/sqlbasicsLibrary Database Schema, @kanak chouksey @nimish ikhar 

This repository contains a simple SQL file (library_schema.sql) that defines a basic database schema for a library system. It includes tables for Authors, Books, Members, and Loans, along with sample data.

Database Schema

The database consists of the following tables:

Authors

•
author_id: Primary Key, unique identifier for the author.

•
first_name: Author's first name.

•
last_name: Author's last name.

•
birth_date: Author's birth date.

Books

•
book_id: Primary Key, unique identifier for the book.

•
title: Title of the book.

•
author_id: Foreign Key, references Authors.author_id.

•
publication_year: Year the book was published.

•
isbn: International Standard Book Number, unique.

Members

•
member_id: Primary Key, unique identifier for the library member.

•
first_name: Member's first name.

•
last_name: Member's last name.

•
email: Member's email address, unique.

•
registration_date: Date the member registered.

Loans

•
loan_id: Primary Key, unique identifier for the loan.

•
book_id: Foreign Key, references Books.book_id.

•
member_id: Foreign Key, references Members.member_id.

•
loan_date: Date the book was loaned out.

•
return_date: Date the book was returned (can be NULL if not yet returned).

Usage

To set up this database, you can execute the library_schema.sql file in your SQL client or database management system. This will create the tables and populate them with some sample data.

Example (using MySQL client):

Bash


mysql -u your_username -p your_database_name < library_schema.sql


Replace your_username and your_database_name with your actual database credentials.

