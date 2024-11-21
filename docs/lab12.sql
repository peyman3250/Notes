-- Add an assignment with NULL due_date
INSERT INTO assignments (course_id, title, status)
VALUES ('COMP1238', 'Assignment with no date', 'Not Started');

SELECT * FROM assignments
limit 30;

SELECT COUNT(*) FROM courses;

select min(due_date) from assignments;

SELECT * from courses
where course_id like 'Intro%';

--The sqlite_version() function returns the version string for the SQLite library that is running
SELECT sqlite_version();

--returns a copy of input string X in which all lower-case ASCII characters are converted to their upper-case 
SELECT upper('ABCxyz');

--total number of characters in the string X
SELECT length('abcde');

SELECT 7*5;

--The concat(...) function returns a string which is the concatenation of the string representation of all of its non-NULL arguments
--ABC-xyz
SELECT concat('ABC', '-', 'xyz');

SELECT date();

SELECT strftime('%Y', due_date) AS Year, *
FROM assignments;

-- SUBSTRING(string, start, length)
-- District( Ensures that only unique results are included in the output
-- removes duplicate rows from the results )
SELECT DISTINCT SUBSTRING(course_id, 1, 4)
FROM courses;

-- Count how many courses there are with each prefix like 'MATH' and 'COMP'
SELECT SUBSTRING(course_id, 1, 4) AS prefix, count(*)
FROM courses
GROUP BY prefix;

select *
from assignments
where status != 'Completed'
order BY due_date;

SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'completed'
AND course_id LIKE 'COMM%'
AND due_date < '2024-12-31'
ORDER by due_date;

-- The query to list all courses, concatenating the course_name
-- and semester fields with a hyphen between them. 
-- Like this: "IT Essentials - 2024-3"s
SELECT concat ('"', course_name, ' ', '-', ' ', semester,'"')
FROM coursess;

-- query to find all courses that have a lab session scheduled on Friday. Include 
-- only the course_id, course_name , and lab_time in the result.
SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE 'Fri%';

--a query to list all assignments with a due date after the current date.
select *
from assignments
WHERE due_date >= date()
ORDER by due_date;

-- a query to count the number of assignments for each status 
-- (e.g., "Not Started", "In Progress", "Completed"). Hint: GROUP BY
select status, COUNT(*)
FROM assignments
GROUP by status

--a query to find the course with the longest course_name . Use the length() function to compare the lengths.
--Hint: either use ORDER BY ... DESC or do it in two steps - first find the length, then the course.
select course_name, length (course_name)
from courses
ORDER by length(course_name) DESC
limit 1

-- a query to return a list of all course names in uppercase.
SELECT upper(course_name)
from courses

-- a query to list the titles of all assignments that are due in September,regardless of year.Use the LIKE
-- operator to filter due_date
select title
FROM assignments
where due_date like '%-09-%'

-- a query to find all assignments where the due_date is missing
SELECT *
from assignments
WHERE due_date ISNULL 

-- a query to list each course_id along with the total number of assignments associated with it
select course_id, count (course_id) 
from assignments
GROUP by course_id

