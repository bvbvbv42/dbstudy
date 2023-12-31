DROP TABLE PROCEEDING_TBL;
DROP TABLE PROJECT_TBL;
DROP TABLE EMPLOYEE_TBL;
DROP TABLE DEPARTMENT_TBL;

CREATE TABLE DEPARTMENT_TBL(
    DEPT_NO           VARCHAR2(15 BYTE)               NOT NULL 
  , DEPT_NAME         VARCHAR2(30 BYTE)               NULL
  , DEPT_LOCATION     VARCHAR2(50 BYTE)               NULL
  , CONSTRAINT PK_DEPT PRIMARY KEY(DEPT_NO)
);

CREATE TABLE EMPLOYEE_TBL(
    EMP_NO            NUMBER                          NOT NULL 
  , DEPT_NO           VARCHAR2(15 BYTE)               NULL 
  , POSITION          CHAR(10 BYTE)                   NULL
  , NAME              VARCHAR2(15 BYTE)               NULL
  , HIRE_DATE         DATE                            NULL
  , SALARY            NUMBER                          NULL
  , CONSTRAINT PK_EMP  PRIMARY KEY(EMP_NO)
  , CONSTRAINT FK_DEPT FOREIGN KEY(DEPT_NO) REFERENCES DEPARTMENT_TBL(DEPT_NO)
  );
  
CREATE TABLE PROJECT_TBL(
    PJT_NO            NUMBER                          NOT NULL
  , PJT_NAME          VARCHAR2(30 BYTE)               NULL
  , BEGIN_DATE        DATE                            NULL
  , END_DATE          DATE                            NULL
  , CONSTRAINT PK_PJT PRIMARY KEY(PJT_NO)
  );
  
CREATE TABLE PROCEEDING_TBL(
    PCD_NO            NUMBER                          NOT NULL 
  , EMP_NO            NUMBER                          NULL 
  , PJT_NO            NUMBER                          NULL 
  , PJT_STATE         NUMBER                          NOT NULL
  , CONSTRAINT PK_PCD PRIMARY KEY(PCD_NO)
  , CONSTRAINT FK_EMP FOREIGN KEY(EMP_NO) REFERENCES EMPLOYEE_TBL(EMP_NO)
  , CONSTRAINT FK_PJT FOREIGN KEY(PJT_NO) REFERENCES PROJECT_TBL(PJT_NO)
  );