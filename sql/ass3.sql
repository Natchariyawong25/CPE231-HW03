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
/* cannot delete because it don't have column data name 'Smith' */

-- Check data in TABLE
SELECT * FROM "EMPLOYEE" e ;
SELECT * FROM "DEPENDENT" d ;