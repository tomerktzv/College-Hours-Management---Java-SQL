USE college;

SELECT *
FROM Classes;

SELECT *
FROM Courses;

SELECT *
FROM Lecturers;

SELECT *
FROM Scheduler;

SELECT *
FROM Phones;

INSERT INTO Lecturers VALUES (123, 'why', 50, 'hey', '15');
INSERT INTO phones VALUES ('050', 123);


DELETE FROM Lecturers
WHERE id = 123;


UPDATE Phones
SET Primay = TRUE
WHERE Phones = '052-1111112';

create table test(Day DATE);



SELECT *
FROM WeekDays;

# TIME RANGE QUERY

SELECT ID, ClassNum, CourseNum, b.Day, Hour
FROM Scheduler AS b
INNER JOIN WeekDays AS a
ON a.Day = b.Day
WHERE DayNum BETWEEN 2 and 3
AND b.Hour IN (SELECT b.Hour FROM Scheduler WHERE b.Hour BETWEEN '02:00' AND '09:30')
ORDER BY b.Day ASC , b.Hour ASC;
# GROUP BY DayNum;
# group by ID, ClassNum, CourseNum, b.Day, Hour;




# Classes Query
SELECT ClassNum, s.CourseNum, Subject, s.ID LecturerID, l.name
From Scheduler AS s
INNER JOIN Courses AS c
INNER JOIN Lecturers AS l
ON s.CourseNum = c.CourseNum AND s.ID = l.ID
WHERE ClassNum = 2105;
#

# Lecturers Query
SELECT l.Name, l.ID, ClassNum, s.CourseNum, Subject, Day, Hour
From Scheduler AS s
INNER JOIN Lecturers AS l
INNER join Courses AS c
ON s.ID = l.ID AND c.CourseNum = s.CourseNum
WHERE Name LIKE '%mekin%';

##########
SELECT l.Name, l.ID, ClassNum, s.CourseNum, Subject, Day, Hour
From Scheduler AS s
INNER JOIN Lecturers AS l
INNER join Courses AS c
ON s.ID IN (SELECT l.ID from Lecturers WHERE s.ID = l.ID)
WHERE c.CourseNum = s.CourseNum
AND Name LIKE '%kat%';
#

SELECT DISTINCT id
FROM Phones;

SELECT
  l.ID,
  Name,
  Age,
  Address,
  BirthDate,
  max(p.Phones) AS Phone
FROM Lecturers l
  RIGHT JOIN Phones p
    ON l.ID = p.ID
GROUP BY l.ID, Name, Age, Address, BirthDate;


SELECT
  l.ID,
  l.Name,
  p.Phones AS Phone
FROM Lecturers l
  LEFT JOIN Phones p ON l.ID = p.ID
GROUP BY l.id, l.Name;


SELECT
  id,
  max(phones) AS phone
FROM phones
GROUP BY ID;


INSERT INTO WeekDays
VALUES (1, 'Sunday'), (2, 'Monday'), (3, 'Tuesday'), (4, 'Wednesday'), (5, 'Thursday'), (6, 'Friday'), (7, 'Saturday');






CREATE TABLE IF NOT EXISTS Phones (
  Phones VARCHAR(25) PRIMARY KEY,
  Primay BOOLEAN NOT NULL,
  ID     INTEGER NOT NULL REFERENCES Lecturers (ID)
);

DELETE FROM Phones
WHERE id = 1111230000;

SELECT Phones From Phones;

INSERT INTO Phones VALUES ('051-1111111', TRUE, 111123000);
INSERT INTO Phones VALUES ('051-1111112', FALSE, 111123000);
INSERT INTO Phones VALUES ('052-0000022', TRUE, 123456739);
INSERT INTO Phones VALUES ('051-1111113', FALSE, 123456739);


INSERT INTO Classes
VALUES (247, 'Fernik', 3), (35, 'Gallery', 0), (66, 'Library', 5), (61, 'Mitchell', 0), (0, 'Fernik', -1),
  (23, 'Center', 25), (2104, 'Mitchell', 1);
INSERT INTO Lecturers VALUES (123456789, 'Yogev Hezkia', 19, 'Ana Frank 12', '04/08/1997'),
  (994534123, 'Yotam Akshota', 26, 'Levontin 5', '10/10/1990');
INSERT INTO Lecturers VALUES (111123000, 'Shamir Kritzler', 34, 'Osishkin 20', '08/12/1982'),
  (456000456, 'Alexander Djura', 40, 'Usha 7', '31/02/1976');
INSERT INTO Lecturers VALUES (123456739, 'Yossi Efraim', 15, 'Pisnker 1', '04/01/2001'),
  (999534023, 'Shuli Cohen', 52, 'Brurya 12', '09/11/1964');
INSERT INTO Lecturers VALUES (555444111, 'Natalie Levy', 22, 'Alenby 20', '12/06/1994');
INSERT INTO Courses VALUES (23, 'Physics', 'A', '1st', 6), (52, 'Algebra', 'B', '2nd', 3), (5, 'Sports', 'Summer', '4th', 2);
INSERT INTO Courses VALUES (15, 'Algorithms', 'B', '2nd', 5), (10, 'Computer Science', 'A', '1st', 7),
  (200, 'Programming Languages', 'Summer', '3rd', 4);
INSERT INTO Courses VALUES (76, 'Statistics', 'A', '4th', 2);
INSERT INTO Scheduler VALUES (994534123, 0, 5, 'Friday', '10:00'), (123456739, 35, 10, 'Sunday', '16:00'),
  (123456789, 61, 15, 'Monday', '07:00'), (999534023, 66, 23, 'Thursday', '11:00');
INSERT INTO Scheduler VALUES (111123000, 247, 52, 'Monday', '12:00'), (555444111, 23, 76, 'Wednesday', '16:30'),
  (456000456, 2104, 200, 'Friday', '08:00');

SELECT *
FROM Scheduler;

SELECT *
FROM Phones;

delete from phones where id = 123 and 456;

insert into phones values (789, 123);

UPDATE Phones
SET PhoneNum = 555
WHERE id = 123
LIMIT 1;


UPDATE Phones p
SET p.PhoneNum = 789
WHERE p.PhoneNum = (SELECT PhoneNum
       FROM Phones
       WHERE id = 123
       limit 1);


SELECT * FROM Scheduler AS s
WHERE Day IN (SELECT Day FROM WeekDays WHERE dayNum=2 and Hour>='09:00')
OR Day IN (SELECT Day FROM WeekDays WHERE dayNum BETWEEN 3 And 4)
OR Day IN (SELECT Day FROM WeekDays WHERE dayNum=5 and Hour<='05:00')
ORDER BY Day ASC,Hour ASC;