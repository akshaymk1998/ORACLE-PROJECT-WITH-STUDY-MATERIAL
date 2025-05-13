/*
	program empundermanger.sql
	Author: Avez Hussain
	Date : 29-mar-2022
	Purpose: READ ME TABELS DESCRIPTIONS  
	*/
TNAME                          TABTYPE  CLUSTERID
------------------------------ ------- ----------
BATCH_MASTER                   TABLE
BIN_DETAILS                    TABLE
CURRENT_BACKORDER              TABLE
EMPLOYEE_ADDRESS               TABLE
EMPLOYEE_MASTER                TABLE
ITEM_MASTER                    TABLE
MANAGER_MASTER                 TABLE
PART_MASTER                    TABLE
WAREHOUSE_MASTER               TABLE

SQL> desc BATCH_MASTER ;
 Name                                                  Null?    Type
 ----------------------------------------------------- -------- ------------------------------------
 BATCH_NUMBER                                                   NUMBER(5)
 BATCH_ARRIVAL_DATE                                             DATE
 MANAGER_ID                                                     NUMBER(5)
 WAREHOUSE_ID                                                   VARCHAR2(5)

SQL>
SQL> desc BIN_DETAILS;
 Name                                                  Null?    Type
 ----------------------------------------------------- -------- ------------------------------------
 BIN_NUMBER                                                     NUMBER(5)
 WAREHOUSE_ID                                                   VARCHAR2(4)

SQL> desc CURRENT_BACKORDER ;
 Name                                                  Null?    Type
 ----------------------------------------------------- -------- ------------------------------------
 PART_NUMBER                                                    VARCHAR2(5)
 ORIGNAL_QUNTITY                                                NUMBER(5)
 REMAINING_QUNATITY                                             NUMBER(5)
 BACKORDER_DATE                                                 DATE
 MANAGER_ID                                                     NUMBER(5)
 BACKORDER_ID                                                   NUMBER
 WAREHOUSE_ID                                                   VARCHAR2(4)

SQL> desc EMPLOYEE_ADDRESS  ;
 Name                                                  Null?    Type
 ----------------------------------------------------- -------- ------------------------------------
 STREET_NUMBER                                                  VARCHAR2(6)
 EMPLOYEE_NUMBER                                                NUMBER(5)
 STREETNAME                                                     VARCHAR2(10)
 CITY                                                           VARCHAR2(24)
 PROVINCE                                                       VARCHAR2(4)

SQL> desc EMPLOYEE_MASTER ;
 Name                                                  Null?    Type
 ----------------------------------------------------- -------- ------------------------------------
 FIRSTNAME                                                      VARCHAR2(10)
 MIDDLENAME                                                     VARCHAR2(10)
 LASTNAME                                                       VARCHAR2(20)
 PHONENUMBER                                           NOT NULL NUMBER(9)
 SALARY                                                         NUMBER(9,3)
 JOB                                                            VARCHAR2(25)
 MANAGER_ID                                                     NUMBER(5)
 WAREHOUSE_ID                                                   VARCHAR2(4)
 EMPLOYEE_NUMBER                                                NUMBER(5)
 
SQL> desc ITEM_MASTER ;
 Name                                                  Null?    Type
 ----------------------------------------------------- -------- ------------------------------------
 ITEM_NUMBER                                                    VARCHAR2(5)
 PART_NUMBER                                           NOT NULL VARCHAR2(5)
 BATCH_NUMBER                                                   NUMBER
 DATE_OUT                                                       DATE
 CHECK_OUT                                                      DATE
 BIN_NUMBER                                                     NUMBER(5)


SQL> desc MANAGER_MASTER;
 Name                                                  Null?    Type
 ----------------------------------------------------- -------- ------------------------------------
 MANAGER_ID                                                     NUMBER(5)
 WAREHOUSE_ID                                                   VARCHAR2(4)
 EMPLOYEE_NUMBER                                                NUMBER(5)

SQL> desc PART_MASTER ;
 Name                                                  Null?    Type
 ----------------------------------------------------- -------- ------------------------------------
 PART_NUMBER                                                    VARCHAR2(5)
 SUB_PART_NUMBER                                                VARCHAR2(4)
 ASSEMBLY_NUMBER                                                VARCHAR2(4)
 BATCH_NUMBER                                                   NUMBER(5)

SQL>
SQL> desc WAREHOUSE_MASTER ;
 Name                                                  Null?    Type
 ----------------------------------------------------- -------- ------------------------------------
 WAREHOUSE_ID                                                   VARCHAR2(4)
 WAREHOUSE_NAME                                                 VARCHAR2(25)
 WAREHOUSE_ADDRESS                                              VARCHAR2(100)
 MANAGER_ID                                                     NUMBER(5)
 BIN_NUMBER                                                     NUMBER(5)

SQL>



 
SQL> select * from BATCH_MASTER ;

BATCH_NUMBER BATCH_ARR MANAGER_ID WAREH
------------ --------- ---------- -----
           1 28-MAR-22      10101 WH1
           2 27-MAR-22      10102 WH2
           3 26-MAR-22      10103 WH3

SQL> select * from BIN_DETAILS;

BIN_NUMBER WARE
---------- ----
         1 WH1
         2 WH2
         3 WH3

SQL> select * from CURRENT_BACKORDER;

PART_ ORIGNAL_QUNTITY REMAINING_QUNATITY BACKORDER MANAGER_ID BACKORDER_ID WARE
----- --------------- ------------------ --------- ---------- ------------ ----
010A              100                 45 01-MAR-22      10101          999 WH1
010B              100                 45 01-MAR-22      10102          888 WH2
010C              100                 45 01-MAR-22      10103          777 WH3

SQL> select * from EMPLOYEE_ADDRESS;

STREET EMPLOYEE_NUMBER STREETNAME CITY                     PROV
------ --------------- ---------- ------------------------ ----
431602             100 NAIABADI   NANDED                   MH26
431603             101 SUBWAY     BANGLORE                 BG20
431604             102 JEMS       HYDERABAD                TL18

SQL> select * from EMPLOYEE_MASTER;

FIRSTNAME  MIDDLENAME LASTNAME             PHONENUMBER     SALARY JOB                       MANAGER_ID WARE EMPLOYEE_NUMBER
---------- ---------- -------------------- ----------- ---------- ------------------------- ---------- ---- ---------------
AVEZ       HUSSAIN    SHUAKAT                  1234567      20800 MANAGER                              WH1              100
LATHEESH   SAI        ERAPALLI               111111111      20800 MANAGER                              WH2              101
AKSHAY     KALBURGI   AKSHAY                  23456789      20800 MANAGER                              WH3              102
Pavan                 Pallam                  40224536      15000 WORKER                         10101 WH1              103
William               Smith                   40225636      15000 WORKER                         10101 WH1              104
Akbar                 Syed                    40225766      15000 WORKER                         10101 WH1              105
Ravi       Kiran      Soora                   40243766      15000 WORKER                         10101 WH2              106
Akhil      Singh      Patan                   40245836      15000 WORKER                         10101 WH2              107
Nancy                 Sherif                  40237436      15000 WORKER                         10102 WH2              108
Praneeth   Kumar      Gadam                   40236536      15000 WORKER                         10103 WH3              109
Alamsha               Sheik                   40238946      15000 WORKER                         10103 WH3              110
Saravan               Jha                     40238946      15000 WORKER                         10103 WH3              111

SQL> select * from ITEM_MASTER;

ITEM_ PART_ BATCH_NUMBER DATE_OUT  CHECK_OUT BIN_NUMBER
----- ----- ------------ --------- --------- ----------
010A  A1               1 31-MAR-22 31-MAR-22          1
010B  A2               1 31-MAR-22 31-MAR-22          1
010C  B1               2 31-MAR-22 31-MAR-22          2
010D  B2               2 31-MAR-22 31-MAR-22          2
010E  C1               3 31-MAR-22 31-MAR-22          3
010F  C2               3 31-MAR-22 31-MAR-22          3

SQL> select * from MANAGER_MASTER ;

MANAGER_ID WARE EMPLOYEE_NUMBER
---------- ---- ---------------
     10101 WH1              100
     10102 WH2              101
     10103 WH3              102

SQL> select * from PART_MASTER ;

PART_ SUB_ ASSE BATCH_NUMBER
----- ---- ---- ------------
A1    A1B  ASA1            1
A2    A2B  ASA2            1
B1    B1B  ASB1            2
B2    B2B  ASB2            2
C1    C1B  ASC1            3
C2    C2B  ASC2            3

SQL> select * from WAREHOUSE_MASTER ;

WARE WAREHOUSE_NAME            WAREHOUSE_ADDRESS                                                                                    MANAGER_ID BIN_NUMBER
---- ------------------------- ---------------------------------------------------------------------------------------------------- ---------- ----------
WH1  AHWH                      NANDED                                                                                                    10101          1
WH2  SLWH                      BANGLORE                                                                                                  10102          2
WH3  AKWH                      HYDERABAD                                                                                                 10103          3

SQL>


