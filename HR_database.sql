--Create Table Statements

--Employee
CREATE TABLE Employee(
 Employee_Id INTEGER NOT NULL,
 Employee_Name VARCHAR(25),
 Employee_DOB DATE,
 Hire_Date DATE,
 Employee_Address VARCHAR(25),
 Dept_Id INTEGER,
CONSTRAINT EMPLOYEE_PK PRIMARY KEY (Employee_Id),
FOREIGN KEY (Dept_Id) REFERENCES Department(Dept_Id)
);

--Department
CREATE TABLE Department(
 Dept_Id INTEGER NOT NULL,
 Dept_Name VARCHAR(30),
Dept_Location VARCHAR(30),
Dept_Manager VARCHAR(30),
Dept_Type VARCHAR2(30),
 CONSTRAINT DEPARTMENT_PK PRIMARY KEY (Dept_Id)
 );
 
--Salary
 CREATE TABLE Salary(
 Salary_Id INTEGER NOT NULL,
 Net_Salary NUMBER(10),
 OT_Hours INTEGER,
OT_Rate NUMBER(10),
 Bonus_Salary NUMBER(10),
Employee_Id INTEGER,
 CONSTRAINT SALARY_PK PRIMARY KEY (Salary_Id),
 FOREIGN KEY (Employee_Id) REFERENCES Employee (Employee_Id)
 );
 
--Project
CREATE TABLE Project(
 Project_Id INTEGER NOT NULL,
 Project_Title VARCHAR(50),
Project_StartDate DATE,
Project_EndDate DATE,
Project_Description VARCHAR(50),
Dept_Id INTEGER,
CONSTRAINT PROJECT_PK PRIMARY KEY (Project_Id),
FOREIGN KEY (Dept_Id) REFERENCES Department (Dept_Id)
 );
 
--Training
CREATE TABLE Training(
 Training_Id INTEGER NOT NULL,
 Training_StartDate DATE,
Training_Description VARCHAR(50),
Training_Role VARCHAR(10),
Supervisor VARCHAR(20),
Dept_Id INTEGER,
CONSTRAINT TRAINING_PK PRIMARY KEY (Training_Id),
FOREIGN KEY (Dept_Id) REFERENCES Department (Dept_Id)
 );

--EmployeeProject 
CREATE TABLE EmployeeProject(
Employee_Id INTEGER,
 Project_Id INTEGER,
 CONSTRAINT EMPPROJECT_PK PRIMARY KEY (Employee_Id,Project_Id),
 FOREIGN KEY (Employee_Id) REFERENCES Employee(Employee_Id),
 FOREIGN KEY (Project_Id) REFERENCES Project(Project_Id)
 );

--DepartmentProject
CREATE TABLE DepartmentProject(
Dept_Id INTEGER,
 Project_Id INTEGER,
 CONSTRAINT DEPARTMENTPROJECT_PK PRIMARY KEY (Dept_Id,Project_Id),
 FOREIGN KEY (Dept_Id) REFERENCES Department(Dept_Id),
 FOREIGN KEY (Project_Id) REFERENCES Project(Project_Id)
 );
 


 
--Insert Statements

--Employee
INSERT INTO Employee VALUES (101,'Kamal',to_date('14-APR-1950','dd-MON-yyyy'),to_date('11-MAR-2005', 'dd-MON-yyyy'),'Kandy',204);
INSERT INTO Employee VALUES (102,'Aruna',to_date('24-MAY-1955','dd-MON-yyyy'), to_date('10-OCT-2001','dd-MON-yyyy'),'Mathara',202);
INSERT INTO Employee VALUES (103,'Saman',to_date('23-SEP-1967','dd-MON-yyyy'), to_date('29-NOV-1998', 'dd-MON-yyyy'),'Jaffna',209);
INSERT INTO Employee VALUES (104,'Kasun',to_date('25-OCT-1949','dd-MON-yyyy'), to_date('04-JULY-1995', 'dd-MON-yyyy'),'Colombo',207);
INSERT INTO Employee VALUES (105,'Ajith',to_date('14-NOV-1972','dd-MON-yyyy'), to_date('11-APR-2000', 'dd-MON-yyyy'),'Galle',200);
INSERT INTO Employee VALUES (106,'Dilan',to_date('30-APR-1993','dd-MON-yyyy'), to_date('23-DEC-2010', 'dd-MON-yyyy'),'Kandy',203);
INSERT INTO Employee VALUES (107,'Shan',to_date('03-JAN-1988','dd-MON-yyyy'), to_date('16-JAN-2015', 'dd-MON-yyyy'),'Kurunegala',205);
INSERT INTO Employee VALUES (108,'Kumari',to_date('15-DEC-1991','dd-MON-yyyy'), to_date('30-MAY-1997', 'dd-MON-yyyy'),'Kegalle',208);
INSERT INTO Employee VALUES (109,'Sahan',to_date('19-SEP-1987','dd-MON-yyyy'), to_date('13-AUG-2021', 'dd-MON-yyyy'),'Colombo',206);
INSERT INTO Employee VALUES (110,'Yasas',to_date('09-AUG-1969','dd-MON-yyyy'), to_date('05-SEP-2020', 'dd-MON-yyyy'),'Kelaniya',201);

--Department
INSERT INTO Department VALUES (200,'HR','Kandy','Amal','none');
INSERT INTO Department VALUES (201,'Account','Kandy','Anuradha','none');
INSERT INTO Department VALUES (202,'Production','Kandy','Janith','none');
INSERT INTO Department VALUES (203,'Sales','Kandy','kamal','none');
INSERT INTO Department VALUES (204,'Quality Assurance','Kandy','Amila','none');
INSERT INTO Department VALUES (205, 'IT' ,'Kandy','Ruwan','none');
INSERT INTO Department VALUES (206,'Development','Kandy','Shan','none');
INSERT INTO Department VALUES (207,' Purchasing','Kandy','Yasas','none');
INSERT INTO Department VALUES (208,'Division','Kandy','Kumudu','none');
INSERT INTO Department VALUES (209,'Project management','Kandy','Nisal','none');

--Salary
INSERT INTO Salary VALUES (300,57600,30,200,10000,105);
INSERT INTO Salary VALUES (301,23500,25,200,2500,103);
INSERT INTO Salary VALUES (302,50000,32,200,1500,107);
INSERT INTO Salary VALUES (303,45000,28,200,10500,101);
INSERT INTO Salary VALUES (304,55000,10,200,2550,106);
INSERT INTO Salary VALUES (305,65000,26,200,7500,110);
INSERT INTO Salary VALUES (306,100000,20,200,9000,102);
INSERT INTO Salary VALUES (307,35000,35,200,550,104);
INSERT INTO Salary VALUES (308,85000,5,200,1000,108);
INSERT INTO Salary VALUES (309,25500,22,200,700,109);

--Project
INSERT INTO Project VALUES (400,'abc',to_date('21-MAY-2021', 'dd-MON-yyyy'),to_date('5-JAN-2022', 'dd-MON-yyyy'),'new','206');
INSERT INTO Project VALUES (401,'bcd',to_date('20-SEP-2022', 'dd-MON-yyyy'),to_date('21-JUNE-2023', 'dd-MON-yyyy'),'new','209');
INSERT INTO Project VALUES (402,'cde',to_date('5-APR-2020', 'dd-MON-yyyy'),to_date('16-APR-2022', 'dd-MON-yyyy'),'started','208');
INSERT INTO Project VALUES (403,'def',to_date('11-JUNE-2019', 'dd-MON-yyyy'),to_date('11-JAN-2020', 'dd-MON-yyyy'),'finished','205');
INSERT INTO Project VALUES (404,'efg',to_date('30-DEC-2022', 'dd-MON-yyyy'),to_date('24-FEB-2023', 'dd-MON-yyyy'),'new','203');
INSERT INTO Project VALUES (405,'fgh',to_date('22-OCT-2020', 'dd-MON-yyyy'),to_date('21-MAR-2022', 'dd-MON-yyyy'),'started','201');
INSERT INTO Project VALUES (406,'ghi',to_date('27-NOV-2021', 'dd-MON-yyyy'),to_date('12-DEC-2022', 'dd-MON-yyyy'),'new','204');
INSERT INTO Project VALUES (407,'hij',to_date('16-MAY-2021', 'dd-MON-yyyy'),to_date('05-OCT-2023', 'dd-MON-yyyy'),'new','200');
INSERT INTO Project VALUES (408,'ijk',to_date('10-JAN-2020', 'dd-MON-yyyy'),to_date('30-NOV-2021', 'dd-MON-yyyy'),'finished','207');
INSERT INTO Project VALUES (409,'jkl',to_date('29-MAR-2023', 'dd-MON-yyyy'),to_date('22-JAN-2023', 'dd-MON-yyyy'),'new','202');

--Training
INSERT INTO Training VALUES (500,to_date('22-MAY-2022', 'dd-MON-yyyy'),'abc','QA','Amal','208');
INSERT INTO Training VALUES (501,to_date('28-JAN-2023', 'dd-MON-yyyy'),'def','SE','Kaml','203');
INSERT INTO Training VALUES (502,to_date('11-DEC-2020', 'dd-MON-yyyy'),'ghi','CYBER','Kasun','201');
INSERT INTO Training VALUES (503,to_date('21-JULY-2022', 'dd-MON-yyyy'),'jkl','ACCOUNTANT','Shan','202');
INSERT INTO Training VALUES (504,to_date('30-AUG-2020', 'dd-MON-yyyy'),'mno','MANAGER','Shan','204');
INSERT INTO Training VALUES (505,to_date('2-FEB-2021', 'dd-MON-yyyy'),'pqr','Consultant','Janith','207');
INSERT INTO Training VALUES (506,to_date('1-JAN-2022', 'dd-MON-yyyy'),'stu','SE','Visal','200');
INSERT INTO Training VALUES (507,to_date('10-MAY-2021', 'dd-MON-yyyy'),'vwz','OPARATOR','Supun','206');
INSERT INTO Training VALUES (508,to_date('20-OCT-2021', 'dd-MON-yyyy'),'yza','ANALYTIC','Amal','201');
INSERT INTO Training VALUES (509,to_date('23-NOV-2023', 'dd-MON-yyyy'),'bcd','ADMIN','Amal','205');

--EmployeeProject
INSERT INTO EmployeeProject VALUES (105,403);
INSERT INTO EmployeeProject VALUES (101,400);
INSERT INTO EmployeeProject VALUES (106,404);
INSERT INTO EmployeeProject VALUES (102,406);
INSERT INTO EmployeeProject VALUES (108,408);
INSERT INTO EmployeeProject VALUES (104,402);
INSERT INTO EmployeeProject VALUES (109,407);
INSERT INTO EmployeeProject VALUES (103,409);
INSERT INTO EmployeeProject VALUES (107,401);
INSERT INTO EmployeeProject VALUES (110,405);

--DepartmentProject
INSERT INTO DepartmentProject VALUES (209,401);
INSERT INTO DepartmentProject VALUES (200,404);
INSERT INTO DepartmentProject VALUES (201,409);
INSERT INTO DepartmentProject VALUES (207,400);
INSERT INTO DepartmentProject VALUES (202,402);
INSERT INTO DepartmentProject VALUES (208,407);
INSERT INTO DepartmentProject VALUES (204,403);
INSERT INTO DepartmentProject VALUES (203,405);
INSERT INTO DepartmentProject VALUES (205,408);
INSERT INTO DepartmentProject VALUES (206,406);



select * from employee;
select * from department;
select * from project;
select * from training;
select * from salary;
select * from employeeproject;
select * from departmentproject;



CREATE USER C##SystemAdmin IDENTIFIED BY SystemAdmin;
CREATE USER C##Manager IDENTIFIED BY Manager;
CREATE USER C##Executive IDENTIFIED BY Executive;

GRANT CONNECT TO C##SystemAdmin;
GRANT CREATE SESSION, CREATE VIEW, CREATE TABLE, ALTER SESSION, CREATE SEQUENCE TO C##SystemAdmin;
GRANT CREATE SYNONYM, CREATE DATABASE LINK, RESOURCE, UNLIMITED TABLESPACE TO C##SystemAdmin;
GRANT  all privileges TO C##SystemAdmin;

GRANT SELECT, INSERT, UPDATE, DELETE ON employee TO C##SystemAdmin;
GRANT SELECT, INSERT, UPDATE, DELETE ON department TO C##SystemAdmin;
GRANT SELECT, INSERT, UPDATE, DELETE ON salary TO C##SystemAdmin;
GRANT SELECT, INSERT, UPDATE, DELETE ON training TO C##SystemAdmin;
GRANT SELECT, INSERT, UPDATE, DELETE ON project TO C##SystemAdmin;
GRANT SELECT, INSERT, UPDATE, DELETE ON EmployeeProject TO C##SystemAdmin;
GRANT SELECT, INSERT, UPDATE, DELETE ON DepartmentProject TO C##SystemAdmin;

--Manager (Read/Write Permissions): Grant read and write permissions to the database.
GRANT CREATE SESSION TO C##Manager;
GRANT SELECT, INSERT ON employee TO C##manager;
GRANT SELECT, INSERT ON department TO C##manager;
GRANT SELECT, INSERT ON project TO C##manager;
GRANT SELECT, INSERT ON salary TO C##manager;
GRANT SELECT, INSERT ON training TO C##manager;
GRANT SELECT, INSERT ON EmployeeProject TO C##manager;
GRANT SELECT, INSERT ON DepartmentProject TO C##manager;



--Executive (Read-Only Permissions): Grant read-only permissions to the database.
GRANT CREATE SESSION TO C##Executive;
GRANT SELECT ON sys.employee TO C##executive;
GRANT SELECT ON sys.department TO C##executive;
GRANT SELECT ON sys.project TO C##executive;
GRANT SELECT ON sys.salary TO C##executive;
GRANT SELECT ON sys.training TO C##executive;
GRANT SELECT ON sys.DepartmentProject TO C##executive;
GRANT SELECT ON sys.EmployeeProject TO C##executive;



--Create a view for Managers
CREATE OR REPLACE VIEW Manager_View AS
SELECT
    sys.e.Employee_ID,
    sys.e.Employee_Name,
    sys.e.Employee_DOB,
    sys.e.Hire_Date,
    sys.e.EMPLOYEE_ADDRESS,
    sys.s.Salary_ID,
    sys.s.Net_Salary,
    sys.s.Bonus_Salary
FROM
    sys.employee e, sys.salary s
WHERE
    sys.e.Employee_ID = sys.s.Employee_ID;
    
    select * from Sys.Manager_View;
    

GRANT SELECT ON Manager_View TO C##manager;
    
    
revoke SELECT ON sys.Manager_View TO C##executive;

--vpd
--vpd function
CREATE OR REPLACE FUNCTION manager_policy (p_schema VARCHAR2, p_table VARCHAR2)
RETURN VARCHAR2
AS
BEGIN
  RETURN 'EMPLOYEE_ID = USERENV(''CLIENT_INFO'')';
END manager_policy;

--vpd policy
BEGIN
  DBMS_RLS.ADD_POLICY (
    object_schema => 'HR_database',
    object_name   => 'manager_view',
    policy_name   => 'manager_policy',
    function_schema => 'HR_database',
    policy_function => 'manager_policy',
    statement_types => 'SELECT',
    update_check   => FALSE
  );
END;


--Enable the Policy
   BEGIN
       DBMS_RLS.ENABLE_POLICY (
           object_schema => 'hr_database',
           object_name   => 'Manager_Employee_View',
           policy_name   => 'manager_employee_policy',
           enable        => TRUE
       );
   END;


--7 Encryption

--Configure TDE for the Database
CREATE DIRECTORY tde_wallet_dir AS '/home/wallet';

ADMINISTER KEY MANAGEMENT CREATE AUTO_LOGIN KEYSTORE FROM '/home/wallet'; 

-- Add an encrypted column to the existing table
ALTER TABLE salary
  MODIFY (net_salary NUMBER(10) ENCRYPT USING 'AES128' NO SALT);


--8 data masking
--Create a Data Masking Function
CREATE OR REPLACE FUNCTION mask_net_salary (net_salary VARCHAR2) RETURN VARCHAR2 AS
  masked_net_salary VARCHAR2(20);
BEGIN
 masked_net_salary := 'XX-XX-' || SUBSTR(net_salary, -4);
  RETURN masked_net_salary;
END  mask_net_salary;

--Create a Data Masking Policy
BEGIN
  DBMS_RLS.ADD_POLICY (
    object_schema => 'C##systemadmin',         
    object_name   => 'salary',   
    policy_name   => 'salary_masking_policy',
    function_schema => 'C##systemadmin',   
    policy_function => 'mask_net_salary',
    statement_types => 'SELECT',
    update_check => TRUE
  );
END;
/

---Test the Data Masking Policy
SELECT * FROM C##systemadmin.salary;


--9 FGA
CREATE OR REPLACE FUNCTION is_salary_access (
       Salary_id  IN INTEGER,
       Net_salary  IN NUMBER,
   ) RETURN BOOLEAN AS
   BEGIN
       IF INSTR(SELECT net_salary FROM Salary, 'Salary_id') > 0 THEN
           RETURN TRUE;
       ELSE
           RETURN FALSE;
       END IF;
   END;

---

begin
DBMS_FGA.add_policy (
      object_schema   => 'C##systemadmin',
      object_name     => 'salary',
      policy_name     => 'SALARY_CHK_AUDIT',
      audit_condition => 'bonus_salary > 5000',
      audit_column    => 'bonus_salary'
      );
    end;

SELECT POLICY_NAME FROM DBA_AUDIT_POLICIES; 
---
   BEGIN
       DBMS_FGA.ENABLE_POLICY (
           object_schema => 's.salary_id',
           object_name   => 'salary',
           policy_name   => 'Salary_Audit_Policy',
           enable        => TRUE
       );
   END;