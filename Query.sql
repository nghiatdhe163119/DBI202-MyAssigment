--1
Select s.StudentID, s.StudentName, sa.AssessmentID, sa.Score From
Student_Assessment sa INNER JOIN Student s ON sa.StudentID = s.StudentID
GROUP BY s.StudentName, s.StudentID, sa.AssessmentID, sa.Score
HAVING sa.AssessmentID = 'DBI202 FE'
ORDER BY Score DESC

--2

Select s.StudentName, COUNT(s.StudentName)
From Student s INNER JOIN Attendance a ON s.StudentID = a.StudentID
GROUP BY s.StudentName, a.Status
HAVING a.Status = 0

--3 
Select *
From Student s INNER JOIN Attendance a ON s.StudentID = a.StudentID
WHERE s.StudentID IN (
SELECT s.StudentID FROM
Student_Assessment sa INNER JOIN Student s ON sa.StudentID = s.StudentID
WHERE sa.Score = 10 AND sa.AssessmentID = 'DBI202 PE' ) AND StudentName LIKE 'Nguyen%'




