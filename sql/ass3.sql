/* ข้อ a */
INSERT INTO "EMPLOYEE" 
VALUES ('Richard','K','Marini','653298653','1962/12/30','98 Oak Forest, Katy, TX','M',37000,'653298653',4);

-- Check data in TABLE
SELECT * FROM "EMPLOYEE" e ;

/* ข้อ b */
UPDATE "PROJECT" SET "Plocation"='Bellaire' , "Dnum"= 5 WHERE "Pnumber" = 10 ;

-- Check data in TABLE
SELECT * FROM "PROJECT" p ;

/* ข้อ c : ยังไม่เสร็จ*/
DELETE FROM "EMPLOYEE" e
WHERE e."Lname" ='Smith';

-- Check data in TABLE
SELECT * FROM "EMPLOYEE" e ;
SELECT * FROM "DEPENDENT" d ;