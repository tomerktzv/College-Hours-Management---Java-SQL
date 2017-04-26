use college;
select * from college.Classes
where Building like '%it%';

INSERT INTO Classes (`Class`, `Floor`, `Building`) VALUES ('62', '0', 'Ground');
INSERT INTO Classes VALUE (2204, 'Mitchell', 2);
INSERT INTO Classes VALUES (493, 'test1', 10), (123, 'test2', 30);
INSERT INTO Teachers VALUES (123456789, 'Amichai Malka', 38, 0505137344, 'Har-Sinai 25', '01/01/1111'), (987654321, 'Rubi Laks', 42, 0541234561, 'Saadia-Gaon 30', '12/06/1989');

delete from teachers where age = 38;

ALTER TABLE Lecture ADD FOREIGN KEY (ClassNum) REFERENCES Classes (ClassNum);
ALTER TABLE Lecture ADD FOREIGN KEY (CourseNum) REFERENCES Courses (CourseNum);
ALTER TABLE Lecture ADD FOREIGN KEY (ID) REFERENCES Teachers (ID);

ALTER TABLE Lecture ADD FOREIGN KEY (RoomNum) REFERENCES Rooms (RoomNum);

INSERT INTO Classes
VALUES (247, 'Fernik', 3), (35, 'Gallery', 0), (66, 'Library', 5), (61, 'Mitchell', 0), (0, 'Fernik', -1),
  (23, 'Center', 25), (2104, 'Mitchell', 1);



INSERT INTO Lecturers VALUES (123456789, 'Yogev Hezkia', 19, 'Ana Frank 12', '04/08/1997'),
  (994534123, 'Yotam Akshota', 26, 'Levontin 5', '10/10/1990');

UPDATE Lecturers
SET id = 111123000
WHERE id = 000123000;



INSERT INTO Lecturers VALUES (111123000, 'Shamir Kritzler', 34, '051-1111111', 'Osishkin 20', '08/12/1982'),
  (456000456, 'Alexander Djura', 40, '050-1234123', 'Usha 7', '31/02/1976');
INSERT INTO Lecturers VALUES (123456739, 'Yossi Efraim', 15, '052-0000000', 'Pisnker 1', '04/01/2001'),
  (999534023, 'Shuli Cohen', 52, '054-0951234', 'Brurya 12', '09/11/1964');
INSERT INTO Lecturers VALUES (555444111, 'Natalie Levy', 22, '051-0027689', 'Alenby 20', '12/06/1994');
INSERT INTO Courses
VALUES (23, 'Physics', 'A', '1st', 6), (52, 'Algebra', 'B', '2nd', 3), (5, 'Sports', 'Summer', '4th', 2);
INSERT INTO Courses VALUES (15, 'Algorithms', 'B', '2nd', 5), (10, 'Computer Science', 'A', '1st', 7),
  (200, 'Programming Languages', 'Summer', '3rd', 4);
INSERT INTO Courses VALUES (76, 'Statistics', 'A', '4th', 2);
INSERT INTO Scheduler VALUES (994534123, 0, 5, 'Friday', '10:00'), (123456739, 35, 10, 'Sunday', '16:00'),
  (123456789, 61, 15, 'Monday', '07:00'), (999534023, 66, 23, 'Thursday', '11:00');
INSERT INTO Scheduler VALUES (111123000, 247, 52, 'Monday', '12:00'), (555444111, 23, 76, 'Wednesday', '16:30'),
  (456000456, 2104, 200, 'Friday', '08:00');



DELETE FROM Classes
WHERE building = '555';

UPDATE Classes
SET building = 'lol', Floor = 5

WHERE ClassNum = 666;


DELETE FROM Teachers
WHERE ID = 999999;

CREATE TABLE IF NOT EXISTS Classes(
  ID INTEGER not NULL
);


SELECT *
FROM Classes);

SELECT *
FROM Teachers;

SELECT *
FROM Courses;

UPDATE Courses
SET CourseNum = 7
WHERE CourseNum = 6;


SELECT *
FROM Lecture;


UPDATE Classes
set Building = 'Fernik'
where Class = 246;

DELETE FROM Classes
WHERE ClassNum = 247;

DROP TABLE college.Scheduler;

DROP TABLE college.Lecturers;
DROP TABLE college.Classes;
DROP TABLE college.Courses;


select Teachers.ID, Teachers.Name, Teachers.BirthDate
from Teachers
INNER JOIN Lecture
ON Teachers.ID = Lecture.ID
ORDER BY 1 DESC;

SELECT Lecture.ID, Lecture.CourseNum
FROM Lecture
INNER JOIN Teachers
ON Lecture.ID = Teachers.ID
ORDER BY 1 DESC;

select *
from Courses NATURAL JOIN Lecture;


SELECT *
FROM Teachers
WHERE id IN (SELECT ID
             FROM Lecture);

CREATE TABLE college.testTable (
  Day DATE, Hour DATETIME

);

SELECT *
FROM testTable;

drop TABLE testTable;

SELECT
  ID,
  name
FROM Teachers
WHERE Teachers.ID IN (SELECT *
                      FROM Lecture);





INSERT INTO testTable VALUES ('2016/12/21', '23:55:55');


DROP TABLE testTable;

