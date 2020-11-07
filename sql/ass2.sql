/* ข้อ a */
SELECT distinct e."Fname" as "first_name",
	   e."Lname" as "Last_name" ,
	   e."Fname" || '  ' || e."Lname" as "Full_Name"
FROM "EMPLOYEE" e
JOIN "PROJECT" p ON p."Dnum" = e."Dno"
JOIN "WORK_ON" w ON w."Pno" = p."Pnumber"
WHERE e."Dno" = 5 and w."Hours" > '10.0' AND w."Pno" = 1;


/* ข้อ b */
/* เเบบ 1 */
SELECT e."Fname" || '  ' || e."Lname" as "Full_Name" 
FROM "EMPLOYEE" e 
JOIN "DEPENDENT" d ON e."Fname" = d."Dependent_name"; 

/* เเบบ 2 */
SELECT e."Fname" || '  ' || e."Lname" as "Full_Name" 
FROM "EMPLOYEE" e 
WHERE EXISTS (SELECT d."Essn" FROM "DEPENDENT" d 
	              WHERE e."Fname" = d."Dependent_name");

-- Check data in TABLE
SELECT * FROM "EMPLOYEE" e ;
SELECT * FROM "DEPENDENT" d ;


/* ข้อ c */
SELECT e."Fname" || ' ' || e."Lname" as "Full_Name" 
FROM "EMPLOYEE" e 
WHERE "Super_ssn" = '333445555' /* Franklin Wong has Ssn = 333445555 */ ;

