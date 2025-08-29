SELECT S.Name
FROM Students S
JOIN Friends F
ON S.ID = F.ID
JOIN Packages P1
ON S.ID = P1.ID
JOIN Packages P2
ON F.Friend_ID = P2.ID
WHERE P1.salary < P2.salary
Order By P2.Salary
;



---


SELECT Students.Name
FROM Students
JOIN Friends
ON Students.ID = Friends.ID
JOIN Packages p1
ON Students.ID = p1.ID
JOIN Packages p2
ON Friends.Friend_ID = p2.ID
WHERE p2.salary > p1.salary
ORDER BY p2.salary ASC
;