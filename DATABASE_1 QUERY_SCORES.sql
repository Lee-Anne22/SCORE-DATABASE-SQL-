CREATE DATABASE DATABASE_1
CREATE DATABASE DATABASE_2;
USE DATABASE_1
-----------------------
CREATE TABLE SUBJECT(
    Subject_Code INT,
    Subjcet_Name NVARCHAR(55),
    Subject_Marks INT
);
----------------------------
INSERT INTO Subject VALUES (501, 'SQL', 75);
INSERT INTO Subject VALUES(502, 'Python', 60),
                         (503, 'PowerBI',65),
                         (504, 'JAVA', 80),
                         (505, 'TABLEU', 90
 );
SELECT*FROM Subject
ORDER BY Subject_Code ASC;

------------------------------
CREATE TABLE SUBJECT_SCORING (
            SCORING_RATE INT,
            SUBJECT_PRIZE INT,
            SUBJECT_CODE INT
);
-------------------------------
--INSERT INTO SUBJECT_SCORING VALUES (80, 70, 503),
                                  -- (90,66,501),
                                 --  (70, 80, 504); 

--SELECT * FROM SUBJECT_SCORING;       

--------------------------------------------------------
INSERT INTO [DATABASE_1].[dbo].[Subject] (Identifier)
SELECT 'Query_lang'
WHERE EXISTS (
    SELECT 1 
    FROM [DATABASE_1].[dbo].[Subject]
    WHERE Subject_Code = 501
);