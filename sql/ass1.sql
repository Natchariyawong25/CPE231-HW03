/* ข้อ a */
INSERT INTO "EMPLOYEE"
VALUES ('Robert','F','Scott','943775543','1972/06/21','2365 Newcastle Rd, Bellaire, TX','M',58000,'888665555',1);
/* error because value too long for type character varying(30) */

/* ข้อ b */
INSERT INTO "PROJECT" VALUES ('ProductA',4,'Bellaire',2);
/* error because insert or update on table "PROJECT" violates foreign key constraint "PROJECT_Dnum_fkey" */
/* DETAIL:  Key (Dnum)=(2) is not present in table "DEPARTMENT". */ 

/* ข้อ c */
INSERT INTO "DEPARTMENT" VALUES ('Production',4,'943775543','2007/10/01');
/* error because duplicate key value violates unique constraint "DEPARTMENT_pkey" */
/* DETAIL:  Key ("Dnumber")=(4) already exists. */ 

/* ข้อ d */
INSERT INTO "WORK_ON" VALUES ('677678989',Null,'40.0');
/* error because null value in column "Pno" violates not-null constraint */
/* DETAIL:  Failing row contains (677678989, null, 40.0). */ 

/* ข้อ e */
INSERT INTO "DEPENDENT" VALUES	('453453453','John','M','1990/12/12','spouse');
/* No violated*/
/* DETAIL: Query returned successfully */ 

-- Check data in TABLE
SELECT * FROM "DEPENDENT";

/* ข้อ f */
DELETE FROM "WORK_ON" WHERE "Essn"='333445555';
/* No violated*/
/* DETAIL: Query returned successfully */ 

-- Check data in TABLE
SELECT * FROM "WORK_ON";

/* ข้อ g */
DELETE FROM "EMPLOYEE" WHERE "Ssn"='987654321';
/* error because update or delete on table "EMPLOYEE" violates foreign key constraint "DEPARTMENT_Mgr_ssn_fkey" on table "DEPARTMENT" */
/* DETAIL: Key (Ssn)=(987654321) is still referenced from table "DEPARTMENT". */

/* ข้อ h */
DELETE FROM "PROJECT" WHERE "Pname"='ProductX';
/* error because update or delete on table "PROJECT" violates foreign key constraint "WORK_ON_Pno_fkey" on table "WORK_ON" */
/* DETAIL: Key (Pnumber)=(1) is still referenced from table "WORK_ON".*/ 

/* ข้อ i */
UPDATE "DEPARTMENT" SET "Mgr_ssn"='123456789' , "Mgr_start_date"='2007/10/01' WHERE "Dnumber" = 5 ;
/* No violated*/
/* DETAIL: Query returned successfully */

-- Check data in TABLE
SELECT * FROM "DEPARTMENT";

/* ข้อ j */
UPDATE "EMPLOYEE" SET "Super_ssn" = '943775543' WHERE "Ssn"='999887777' ;
/* No violated*/
/* DETAIL: Query returned successfully */ 

-- Check data in TABLE
SELECT * FROM "EMPLOYEE";

/* ข้อ k */
UPDATE "WORK_ON" SET "Hours" = 5.0 WHERE "Essn"='999887777' and "Pno"=10 ;
/* No violated */
/* DETAIL: Query returned successfully */

-- Check data in TABLE
SELECT * FROM "WORK_ON";

