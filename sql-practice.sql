INSERT INTO users (username, firstName, lastName, age)
VALUES 
 ('asmith', 'Alice', 'Smith', 20),
 ('bdoe', 'Bob', 'Doe', 33),
 ('cjohnson', 'Charlie', 'Johnson', 41),
 ('dlee', 'David', 'Lee', 19),
 ('ejones', 'Eve', 'Jones', 30),
 ('fkim', 'Frank', 'Kim', 15),
 ('gwhite', 'Grace', 'White', 22),
 ('hwang', 'Henry', 'Wang', 19),
 ('ijones', 'Ivy', 'Jones', 50),
 ('jdoe', 'John', 'Doe', 65),
 ('klee', 'Kevin', 'Lee', 62),
 ('lchen', 'Linda', 'Chen', 24),
 ('mlee', 'Michael', 'Lee', 29),
 ('nkim', 'Nancy', 'Kim', 18),
 ('ojohnson', 'Oscar', 'Johnson', 40),
 ('pchen', 'Peter', 'Chen', 55),
 ('qwang', 'Quincy', 'Wang', 28),
 ('rjones', 'Rachel', 'Jones', 37),
 ('slee', 'Sam', 'Lee', 21),
 ('tkim', 'Tina', 'Kim', 26);
 -- Created the table with username, firstName, lastName, and age

UPDATE users SET firstName = 'Jane', lastName = 'Doe' WHERE username = 'jdoe';
-- Changed the row that had the username jdoe to Jane instead of John

DELETE FROM users WHERE username = 'jdoe';
-- Deleted the row with username jdoe

SELECT firstName, lastName FROM users WHERE lastName = 'Doe';
-- Searched and selected the row with lastname Doe

SELECT * FROM users WHERE lastName = 'Doe' AND firstName = 'John';
-- Searched and selected the row with lastname Doe and firstName john

SELECT * FROM users WHERE lastName = 'Doe' OR firstName = 'John';
-- Searched and selected the row with lastname Doe or firstName John

SELECT * FROM users WHERE lastName = 'Doe' AND NOT firstName = 'John';
-- Searched and selected the row with lastname Doe and not the firstName John

SELECT * FROM users WHERE lastName = 'Doe' AND (firstName = 'John' OR firstName = 'Jane');
-- Searched and selected the row with lastname Doe and the firstName John or Jane

SELECT firstName AS First, lastName AS Last FROM users;
-- Searched and selected the firstname and lastname columns and displayed them as First and Last

SELECT username, age + 10 AS ageIn10Years FROM users;
-- Searched and selected the username and age columns then added 10 to their age

SELECT concat(firstName, ' ', lastName) AS fullName FROM users;
-- Searched and concatenated the firstname and lastname columns into the fullName column

SELECT * FROM users ORDER BY age DESC;
-- Searched and displayed the rows in order of decending age

SELECT * FROM users ORDER BY lastName ASC, firstName ASC;
-- Searched and selected the rows in accending alphabetical first and lastname order 

SELECT * FROM users LIMIT 5;
-- Searched and selected the first 5 rows	

SELECT * FROM users LIMIT 5 OFFSET 5;
-- Searched and selected the 5 rows after the first 5

SELECT * FROM users ORDER BY lastName ASC LIMIT 10 OFFSET 20;
-- Searched and selected the 10 rows after the first 20 in accending alphabetical lastname order