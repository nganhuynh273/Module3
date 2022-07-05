SELECT * 
FROM Student AS S
WHERE S.StudentName LIKE 'h%';

SELECT *
FROM class AS C
WHERE C.StartDate LIKE '%-12-%';

SELECT SubName, Credit
FROM subject 
WHERE Credit >3 and credit <5;

UPDATE student
SET ClassId = 2
WHERE StudentName='Hung';

SELECT St.StudentName, Su.SubName, M.Mark
FROM student AS St, `subject` AS Su, mark AS M
ORDER BY M.Mark DESC, St.StudentName ASC; 