# Task 5️⃣

The goal of this task was to create a Cloud SQL instance, create a database and practice SQL queries.

The task consisted of the following steps:
1. Create a Cloud SQL instance with PostgreSQL database engine.
2. Connect to the database using Dbeaver.
3. Create a "students" table and play with it (INSERT, SELECT, UPDATE).
4. Prepare a query that would answer the question "what is average age of the students in the class?".
5. Extract to txt data from the "students" table.

Throughout this part of the challenge, I learned:
- how does the Internet work?
- what are databases?

Technologies:
- Cloud SQL

## What is the average age of the students in the class?

The goal of this subtask was to write a SQL query to calculate the average age of the students in the class.

### SQL query

select round(avg(age), 0) from dareit.students;

### Answer

36
