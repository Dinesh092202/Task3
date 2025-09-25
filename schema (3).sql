-- Creating Table of Students
CREATE TABLE students(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age SMALLINT,
    course VARCHAR(100),
    grade CHAR(1)
);

-- Insert initial data
INSERT INTO students(name, age, course, grade)
VALUES
('Anurag Sharma', 20, 'Computer Science', 'A'),
('Dinesh Lodhi', 21, 'Maths', 'B'),
('Satyam Tiwari', 22, 'Physics', 'A'),
('Uday Shetty', 21, 'English', 'C');

-- Insert data with missing values
INSERT INTO students(name, age)
VALUES
('Ram Kapoor', 23),
('Disha Patel', 24);

-- Alternative table with default values
CREATE TABLE students2(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age SMALLINT NOT NULL,
    course VARCHAR(100) DEFAULT 'English',
    grade CHAR(1) DEFAULT 'D'
);

-- Insert data into students2 (with defaults)
INSERT INTO students2(name, age)
VALUES
('Ram Kapoor', 23),
('Disha Patel', 24);

-- Handle NULL values in students
UPDATE students
SET course = 'English'
WHERE course IS NULL;

UPDATE students
SET grade = 'D'
WHERE grade IS NULL;

-- Update records
UPDATE students
SET course = 'Statistics'
WHERE name = 'Dinesh Lodhi';

UPDATE students
SET grade = 'B'
WHERE name = 'Ram Kapoor';

-- Delete records
DELETE FROM students
WHERE grade = 'C';

DELETE FROM students
WHERE age > 23;

-- Display final results
SELECT * FROM students;

-----------------------------------------------------
-- Task 3: Writing Basic SELECT Queries
-----------------------------------------------------

-- 1. Select all records
SELECT * FROM students;

-- 2. Select specific columns
SELECT name, course, grade FROM students;

-- 3. Use WHERE condition
SELECT * FROM students WHERE grade = 'A';

-- 4. Use AND / OR
SELECT * FROM students 
WHERE course = 'Statistics' AND grade = 'B';

SELECT * FROM students 
WHERE course = 'Physics' OR course = 'English';

-- 5. Use LIKE (pattern matching)
SELECT * FROM students 
WHERE name LIKE 'A%';  -- names starting with A

-- 6. Use BETWEEN
SELECT * FROM students 
WHERE age BETWEEN 20 AND 22;

-- 7. Order results
SELECT * FROM students 
ORDER BY age ASC;

SELECT * FROM students 
ORDER BY grade DESC;

-- 8. Limit results
SELECT * FROM students 
LIMIT 3;

-----------------------------------------------------
-- End of Script
-----------------------------------------------------
