/* ข้อ a */
INSERT INTO "EMPLOYEE" 
VALUES ('Richard','K','Marini','653298653','1962/12/30','98 Oak Forest, Katy, TX','M',37000,'653298653',4);

-- Check data in TABLE
SELECT * FROM "EMPLOYEE" e ;

/* ข้อ b */
UPDATE "PROJECT" SET "Plocation"='Bellaire' , "Dnum"= 5 WHERE "Pnumber" = 10 ;

-- Check data in TABLE
SELECT * FROM "PROJECT" p ;

/* ข้อ c */
DELETE FROM "DEPARTMENT" d
WHERE d."Mgr_ssn" IN (SELECT e."Super_ssn" FROM "EMPLOYEE" e
		        WHERE e."Lname" = 'Smith');
/* ERROR:  update or delete on table "DEPARTMENT" violates foreign key constraint "DEPT_LOCATION_Dnumber_fkey" on table "DEPT_LOCATION"
DETAIL:  Key (Dnumber)=(5) is still referenced from table "DEPT_LOCATION". */


-- Check data in TABLE
SELECT * FROM "EMPLOYEE" e ;
SELECT * FROM "DEPENDENT" d ;