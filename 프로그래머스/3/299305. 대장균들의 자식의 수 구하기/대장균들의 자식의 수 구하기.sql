SELECT ID, IFNULL(COUNT, 0) CHILD_COUNT
FROM ECOLI_DATA E1 LEFT 
    JOIN  (SELECT PARENT_ID, COUNT(*) COUNT FROM ECOLI_DATA WHERE PARENT_ID IS NOT NULL GROUP BY PARENT_ID) E2 ON E1.ID = E2.PARENT_ID
ORDER BY ID;
