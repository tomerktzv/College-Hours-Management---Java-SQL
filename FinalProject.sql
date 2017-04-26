USE college;

INSERT INTO Scheduler VALUES (111123000, 247, 52, 'Monday', '12:00');

UPDATE Classes
SET ClassNum = 246
WHERE ClassNum = 3333;



SELECT *
FROM Scheduler;

SELECT *
FROM Lecturers;

SELECT *
FROM Classes;

SELECT *
FROM Courses;

INSERT INTO classes VALUES (246, 'fernik', 5);

UPDATE Courses
SET CourseNum = 41
WHERE CourseNum = 31;

DELETE FROM Courses
WHERE CourseNum = 41;


