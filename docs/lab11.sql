select * from courses;
SELECT * FROM assignments LIMIT 10;
SELECT count(*) from courses;
select count(*) from assignments;
select (due_date) from assignments;
SELECT min(due_date) FROM assignments;

select * 
From Courses
where course_name LIKE 'intro%';

select *
from assignments
-- "!=" This means not equql to
where status != 'Completed'
ORDER by (due_date);

select course_id, title, status, due_date 
from assignments
where status != 'Completed'
And course_id like 'Comm%'
And due_date < '2024-12-31'
ORDER BY due_date;

-- The query that displays the title and due_date of assignments for the course COMP1234 
sELECT title, due_date
FROM assignments
WHERE course_id like 'COMP1234';

-- The query to find the earliest assignment due date in the assignments table.assignments.
SELECT min(due_date)
FROM assignments;

-- The query to find the latest assignment due date in the assignments table.
SELECT max(due_date)
FROM assignments;

-- The query to find the title and course_id of assignments due on 2024-10-08 .
SELECT title, course_id
from assignments
WHERE due_date < '2024-10-08'

-- The query to display the title and due_date of assignments due in October 2024.
SELECT title, due_date
FROM assignments
where due_date LIKE  '2024-10%'

-- The query to find the most recent due_date of assignments with a status of "Completed".
SELECT max(due_date)
FROM assignments
WHERE status like 'Completed'

-- The query to find the total number of assignments with a status of "Not Started"
SELECT COUNT (*)
FROM assignments
where status LIKE 'Not Started'

-- The query to find the course_id and course_name of courses that have lab sessions on Tuesday.
SELECT course_id, course_name
FROM courses
where lab_time like 'Tue%'
 