
명령의 1 행에서 시작하는 중 오류 발생 -
DROP TABLE ENROLL_TBL
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 2 행에서 시작하는 중 오류 발생 -
DROP TABLE LECTURE_TBL
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 3 행에서 시작하는 중 오류 발생 -
DROP TABLE STUDENT_TBL
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 4 행에서 시작하는 중 오류 발생 -
DROP TABLE COURSE_TBL
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Table PROFESSOR_TBL이(가) 삭제되었습니다.


Table PROFESSOR_TBL이(가) 생성되었습니다.


명령의 15 행에서 시작하는 중 오류 발생 -
CREATE TABLE COURSE_TBL(
    COURSE_NO      VARCHAR2(5 BYTE)        NOT NULL,
    COURSE_NAME    VARCHAR2(20 BYTE)       NULL    ,
    COURSE_SCORE   NUMBER(1)               NULL
    CONSTRAINT PK_COURSE PRIMARY KEY(COURSE_NO)
)
오류 보고 -
ORA-00907: 누락된 우괄호
00907. 00000 -  "missing right parenthesis"
*Cause:    
*Action:

명령의 23 행에서 시작하는 중 오류 발생 -
CREATE TABLE STUDENT_TBL(
    STU_NO        VARCHAR2(5 BYTE)         NOT NULL,
    STU_NAME      VARCHAR2(10 BYTE)        NULL    ,
    STU_ADDR      VARCHAR2(50 BYTE)        NULL    ,
    STU_GRADE     NUMBER(1)                NULL    ,
    STU_PRONO     VARCHAR2(10 BYTE)        NOT NULL,
    CONSTRAINT PK_STUDENT FOREIGN KEY(STU_NO),
    CONSTRAINT FK_STUDENT FOREIGN KEY(STU_PRONO) REFERENCES PROFESSOR_TBL(PRO_NO)
)
오류 보고 -
ORA-00905: 누락된 키워드
00905. 00000 -  "missing keyword"
*Cause:    
*Action:

명령의 34 행에서 시작하는 중 오류 발생 -
CREATE TABLE LECTURE_TBL(
    LECTURE_NO      NUMBER                 NOT NULL,
    LECTURE_PRONO   VARCHAR2(5 BYTE)       NULL    ,
    LECTURE_APPLYNO NUMBER                 NULL    ,
    LECTURE_NAME    VARCHAR2(100 BYTE)     NULL    ,
    LECTURE_ROOM    VARCHAR2(100 BYTE)     NULL    ,
    CONSTRAINT PK_LECTURE PRIMARY KEY(LECTURE_NO)  ,
    CONSTRAINT FK_PROF_LECTURE FOREIGN KEY(LECTURE_PRONO) REFERENCES PROFESSOR_TBL(PRO_NO),
    CONSTRAINT FK_ENROLL_LECTURE FOREIGN KEY(LECTURE_APPLYNO) REFERENCES ENROLL_TBL(ENROLL_APPLYNO)
)
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 46 행에서 시작하는 중 오류 발생 -
CREATE TABLE ENROLL_TBL(
    ENROLL_APPLYNO     NUMBER                   NOT NULL, 
    ENROLL_NO          VARCHAR2(5 BYTE)         NOT NULL,
    ENROLL_COURSE_NO   VARCHAR2(5 BYTE)         NOT NULL,
    ENROLL_DATE        DATE                     NULL    ,
    CONSTRAINT PK_ENROLL PRIMARY KEY(ENROLL_APPLYNO),
    CONSTRAINT FK_ENROLL FOREIGN KEY(ENROLL_COURSE_NO) REFERENCES COURSE_TBL(COURSE_NO) ON DELETE CASCADE
    CONSTRAINT FK_ENROLL FOREIGN KEY(ENROLL_APPLYNO) REFERENCES LECTURE_TBL(LECTURE_APPLYNO) ON DELETE CASCADE
)
오류 보고 -
ORA-00907: 누락된 우괄호
00907. 00000 -  "missing right parenthesis"
*Cause:    
*Action:

1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


명령의 63 행에서 시작하는 중 오류 발생 -
INSERT INTO COURSE_TBL(COURSE_NO, COURSE_NAME, COURSE_SCORE) VALUES('CE001', '자바', 3)
오류 발생 명령행: 63 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 64 행에서 시작하는 중 오류 발생 -
INSERT INTO COURSE_TBL(COURSE_NO, COURSE_NAME, COURSE_SCORE) VALUES('CE002', '데이터베이스', 3)
오류 발생 명령행: 64 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 65 행에서 시작하는 중 오류 발생 -
INSERT INTO COURSE_TBL(COURSE_NO, COURSE_NAME, COURSE_SCORE) VALUES('CE003', '서버프로그램', 3)
오류 발생 명령행: 65 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 67 행에서 시작하는 중 오류 발생 -
INSERT INTO STUDENT_TBL(STU_NO, STU_NAME, STU_ADDR, STU_GRADE, STU_PRONO) VALUES('21001', '고길동', '서울', 3, 'P0001')
오류 발생 명령행: 67 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 68 행에서 시작하는 중 오류 발생 -
INSERT INTO STUDENT_TBL(STU_NO, STU_NAME, STU_ADDR, STU_GRADE, STU_PRONO) VALUES('21002', '최무배', '경기', 3, 'P0002')
오류 발생 명령행: 68 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 69 행에서 시작하는 중 오류 발생 -
INSERT INTO STUDENT_TBL(STU_NO, STU_NAME, STU_ADDR, STU_GRADE, STU_PRONO) VALUES('22001', '강우림', '인천', 2, 'P0003')
오류 발생 명령행: 69 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 70 행에서 시작하는 중 오류 발생 -
INSERT INTO STUDENT_TBL(STU_NO, STU_NAME, STU_ADDR, STU_GRADE, STU_PRONO) VALUES('22002', '지수아', '제주', 2, 'P0001')
오류 발생 명령행: 70 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 71 행에서 시작하는 중 오류 발생 -
INSERT INTO STUDENT_TBL(STU_NO, STU_NAME, STU_ADDR, STU_GRADE, STU_PRONO) VALUES('23001', '김예림', '대구', 1, 'P0002')
오류 발생 명령행: 71 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 72 행에서 시작하는 중 오류 발생 -
INSERT INTO STUDENT_TBL(STU_NO, STU_NAME, STU_ADDR, STU_GRADE, STU_PRONO) VALUES('23002', '나태진', '광주', 1, 'P0003')
오류 발생 명령행: 72 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Sequence ENROLL_SEQ이(가) 삭제되었습니다.


Sequence ENROLL_SEQ이(가) 생성되었습니다.


명령의 76 행에서 시작하는 중 오류 발생 -
INSERT INTO ENROLL_TBL(ENROLL_APPLYNO, ENROLL_NO, ENROLL_COURSE_NO, ENROLL_DATE) VALUES (ENROLL_SEQ.NEXTVAL, '21001', 'CE001', '23-02-25')
오류 발생 명령행: 76 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 77 행에서 시작하는 중 오류 발생 -
INSERT INTO ENROLL_TBL(ENROLL_APPLYNO, ENROLL_NO, ENROLL_COURSE_NO, ENROLL_DATE) VALUES (ENROLL_SEQ.NEXTVAL, '21001', 'CE002', '23-02-25')
오류 발생 명령행: 77 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 78 행에서 시작하는 중 오류 발생 -
INSERT INTO ENROLL_TBL(ENROLL_APPLYNO, ENROLL_NO, ENROLL_COURSE_NO, ENROLL_DATE) VALUES (ENROLL_SEQ.NEXTVAL, '21001', 'CE003', '23-02-25')
오류 발생 명령행: 78 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Sequence LEC_SEQ이(가) 삭제되었습니다.


Sequence LEC_SEQ이(가) 생성되었습니다.


명령의 82 행에서 시작하는 중 오류 발생 -
INSERT INTO LECTURE_TB(LECTURE_NO, LECTURE_PRONO, LECTURE_APPLYNO, LECTURE_NAME, LECTURE_ROOM) VALUES (LEC_SEQ.NEXTVAL, 'P0001', 1, '자바완전정복', '101호')
오류 발생 명령행: 82 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 83 행에서 시작하는 중 오류 발생 -
INSERT INTO LECTURE_TB(LECTURE_NO, LECTURE_PRONO, LECTURE_APPLYNO, LECTURE_NAME, LECTURE_ROOM) VALUES (LEC_SEQ.NEXTVAL, 'P0002', 1, '자바완전정복', '102호')
오류 발생 명령행: 83 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 84 행에서 시작하는 중 오류 발생 -
INSERT INTO LECTURE_TB(LECTURE_NO, LECTURE_PRONO, LECTURE_APPLYNO, LECTURE_NAME, LECTURE_ROOM) VALUES (LEC_SEQ.NEXTVAL, 'P0003', 1, '자바완전정복', '103호')
오류 발생 명령행: 84 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:
커밋 완료.

명령의 1 행에서 시작하는 중 오류 발생 -
DROP TABLE ENROLL_TBL
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 2 행에서 시작하는 중 오류 발생 -
DROP TABLE LECTURE_TBL
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 3 행에서 시작하는 중 오류 발생 -
DROP TABLE STUDENT_TBL
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 4 행에서 시작하는 중 오류 발생 -
DROP TABLE COURSE_TBL
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Table PROFESSOR_TBL이(가) 삭제되었습니다.


Table PROFESSOR_TBL이(가) 생성되었습니다.


명령의 15 행에서 시작하는 중 오류 발생 -
CREATE TABLE COURSE_TBL(
    COURSE_NO      VARCHAR2(5 BYTE)        NOT NULL,
    COURSE_NAME    VARCHAR2(20 BYTE)       NULL    ,
    COURSE_SCORE   NUMBER(1)               NULL
    CONSTRAINT PK_COURSE PRIMARY KEY(COURSE_NO)
)
오류 보고 -
ORA-00907: 누락된 우괄호
00907. 00000 -  "missing right parenthesis"
*Cause:    
*Action:

명령의 23 행에서 시작하는 중 오류 발생 -
CREATE TABLE STUDENT_TBL(
    STU_NO        VARCHAR2(5 BYTE)         NOT NULL,
    STU_NAME      VARCHAR2(10 BYTE)        NULL    ,
    STU_ADDR      VARCHAR2(50 BYTE)        NULL    ,
    STU_GRADE     NUMBER(1)                NULL    ,
    STU_PRONO     VARCHAR2(10 BYTE)        NOT NULL,
    CONSTRAINT PK_STUDENT FOREIGN KEY(STU_NO),
    CONSTRAINT FK_STUDENT FOREIGN KEY(STU_PRONO) REFERENCES PROFESSOR_TBL(PRO_NO) ON DELETE CASCADE
)
오류 보고 -
ORA-00905: 누락된 키워드
00905. 00000 -  "missing keyword"
*Cause:    
*Action:

명령의 34 행에서 시작하는 중 오류 발생 -
CREATE TABLE LECTURE_TBL(
    LECTURE_NO      NUMBER                 NOT NULL,
    LECTURE_PRONO   VARCHAR2(5 BYTE)       NULL    ,
    LECTURE_APPLYNO NUMBER                 NULL    ,
    LECTURE_NAME    VARCHAR2(100 BYTE)     NULL    ,
    LECTURE_ROOM    VARCHAR2(100 BYTE)     NULL    ,
    CONSTRAINT PK_LECTURE PRIMARY KEY(LECTURE_NO)  ,
    CONSTRAINT FK_PROF_LECTURE FOREIGN KEY(LECTURE_PRONO) REFERENCES PROFESSOR_TBL(PRO_NO),
    CONSTRAINT FK_ENROLL_LECTURE FOREIGN KEY(LECTURE_APPLYNO) REFERENCES ENROLL_TBL(ENROLL_APPLYNO)
)
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 46 행에서 시작하는 중 오류 발생 -
CREATE TABLE ENROLL_TBL(
    ENROLL_APPLYNO     NUMBER                   NOT NULL, 
    ENROLL_NO          VARCHAR2(5 BYTE)         NOT NULL,
    ENROLL_COURSE_NO   VARCHAR2(5 BYTE)         NOT NULL,
    ENROLL_DATE        DATE                     NULL    ,
    CONSTRAINT PK_ENROLL PRIMARY KEY(ENROLL_APPLYNO),
    CONSTRAINT FK_ENROLL FOREIGN KEY(ENROLL_COURSE_NO) REFERENCES COURSE_TBL(COURSE_NO) ON DELETE CASCADE
    CONSTRAINT FK_ENROLL FOREIGN KEY(ENROLL_APPLYNO) REFERENCES LECTURE_TBL(LECTURE_APPLYNO) ON DELETE CASCADE
)
오류 보고 -
ORA-00907: 누락된 우괄호
00907. 00000 -  "missing right parenthesis"
*Cause:    
*Action:

1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


명령의 63 행에서 시작하는 중 오류 발생 -
INSERT INTO COURSE_TBL(COURSE_NO, COURSE_NAME, COURSE_SCORE) VALUES('CE001', '자바', 3)
오류 발생 명령행: 63 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 64 행에서 시작하는 중 오류 발생 -
INSERT INTO COURSE_TBL(COURSE_NO, COURSE_NAME, COURSE_SCORE) VALUES('CE002', '데이터베이스', 3)
오류 발생 명령행: 64 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 65 행에서 시작하는 중 오류 발생 -
INSERT INTO COURSE_TBL(COURSE_NO, COURSE_NAME, COURSE_SCORE) VALUES('CE003', '서버프로그램', 3)
오류 발생 명령행: 65 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 67 행에서 시작하는 중 오류 발생 -
INSERT INTO STUDENT_TBL(STU_NO, STU_NAME, STU_ADDR, STU_GRADE, STU_PRONO) VALUES('21001', '고길동', '서울', 3, 'P0001')
오류 발생 명령행: 67 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 68 행에서 시작하는 중 오류 발생 -
INSERT INTO STUDENT_TBL(STU_NO, STU_NAME, STU_ADDR, STU_GRADE, STU_PRONO) VALUES('21002', '최무배', '경기', 3, 'P0002')
오류 발생 명령행: 68 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 69 행에서 시작하는 중 오류 발생 -
INSERT INTO STUDENT_TBL(STU_NO, STU_NAME, STU_ADDR, STU_GRADE, STU_PRONO) VALUES('22001', '강우림', '인천', 2, 'P0003')
오류 발생 명령행: 69 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 70 행에서 시작하는 중 오류 발생 -
INSERT INTO STUDENT_TBL(STU_NO, STU_NAME, STU_ADDR, STU_GRADE, STU_PRONO) VALUES('22002', '지수아', '제주', 2, 'P0001')
오류 발생 명령행: 70 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 71 행에서 시작하는 중 오류 발생 -
INSERT INTO STUDENT_TBL(STU_NO, STU_NAME, STU_ADDR, STU_GRADE, STU_PRONO) VALUES('23001', '김예림', '대구', 1, 'P0002')
오류 발생 명령행: 71 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 72 행에서 시작하는 중 오류 발생 -
INSERT INTO STUDENT_TBL(STU_NO, STU_NAME, STU_ADDR, STU_GRADE, STU_PRONO) VALUES('23002', '나태진', '광주', 1, 'P0003')
오류 발생 명령행: 72 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Sequence ENROLL_SEQ이(가) 삭제되었습니다.


Sequence ENROLL_SEQ이(가) 생성되었습니다.


명령의 76 행에서 시작하는 중 오류 발생 -
INSERT INTO ENROLL_TBL(ENROLL_APPLYNO, ENROLL_NO, ENROLL_COURSE_NO, ENROLL_DATE) VALUES (ENROLL_SEQ.NEXTVAL, '21001', 'CE001', '23-02-25')
오류 발생 명령행: 76 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 77 행에서 시작하는 중 오류 발생 -
INSERT INTO ENROLL_TBL(ENROLL_APPLYNO, ENROLL_NO, ENROLL_COURSE_NO, ENROLL_DATE) VALUES (ENROLL_SEQ.NEXTVAL, '21001', 'CE002', '23-02-25')
오류 발생 명령행: 77 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 78 행에서 시작하는 중 오류 발생 -
INSERT INTO ENROLL_TBL(ENROLL_APPLYNO, ENROLL_NO, ENROLL_COURSE_NO, ENROLL_DATE) VALUES (ENROLL_SEQ.NEXTVAL, '21001', 'CE003', '23-02-25')
오류 발생 명령행: 78 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Sequence LEC_SEQ이(가) 삭제되었습니다.


Sequence LEC_SEQ이(가) 생성되었습니다.


명령의 82 행에서 시작하는 중 오류 발생 -
INSERT INTO LECTURE_TB(LECTURE_NO, LECTURE_PRONO, LECTURE_APPLYNO, LECTURE_NAME, LECTURE_ROOM) VALUES (LEC_SEQ.NEXTVAL, 'P0001', 1, '자바완전정복', '101호')
오류 발생 명령행: 82 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 83 행에서 시작하는 중 오류 발생 -
INSERT INTO LECTURE_TB(LECTURE_NO, LECTURE_PRONO, LECTURE_APPLYNO, LECTURE_NAME, LECTURE_ROOM) VALUES (LEC_SEQ.NEXTVAL, 'P0002', 1, '자바완전정복', '102호')
오류 발생 명령행: 83 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 84 행에서 시작하는 중 오류 발생 -
INSERT INTO LECTURE_TB(LECTURE_NO, LECTURE_PRONO, LECTURE_APPLYNO, LECTURE_NAME, LECTURE_ROOM) VALUES (LEC_SEQ.NEXTVAL, 'P0003', 1, '자바완전정복', '103호')
오류 발생 명령행: 84 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:
커밋 완료.

명령의 1 행에서 시작하는 중 오류 발생 -
DROP TABLE ENROLL_TBL
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 2 행에서 시작하는 중 오류 발생 -
DROP TABLE LECTURE_TBL
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 3 행에서 시작하는 중 오류 발생 -
DROP TABLE STUDENT_TBL
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 4 행에서 시작하는 중 오류 발생 -
DROP TABLE COURSE_TBL
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Table PROFESSOR_TBL이(가) 삭제되었습니다.


Table PROFESSOR_TBL이(가) 생성되었습니다.


명령의 15 행에서 시작하는 중 오류 발생 -
CREATE TABLE COURSE_TBL(
    COURSE_NO      VARCHAR2(5 BYTE)        NOT NULL,
    COURSE_NAME    VARCHAR2(20 BYTE)       NULL    ,
    COURSE_SCORE   NUMBER(1)               NULL
    CONSTRAINT PK_COURSE PRIMARY KEY(COURSE_NO)
)
오류 보고 -
ORA-00907: 누락된 우괄호
00907. 00000 -  "missing right parenthesis"
*Cause:    
*Action:

명령의 23 행에서 시작하는 중 오류 발생 -
CREATE TABLE STUDENT_TBL(
    STU_NO        VARCHAR2(5 BYTE)         NOT NULL,
    STU_NAME      VARCHAR2(10 BYTE)        NULL    ,
    STU_ADDR      VARCHAR2(50 BYTE)        NULL    ,
    STU_GRADE     NUMBER(1)                NULL    ,
    STU_PRONO     VARCHAR2(10 BYTE)        NOT NULL,
    CONSTRAINT PK_STUDENT FOREIGN KEY(STU_NO),
    CONSTRAINT FK_STUDENT FOREIGN KEY(STU_PRONO) REFERENCES PROFESSOR_TBL(PRO_NO) ON DELETE CASCADE
)
오류 보고 -
ORA-00905: 누락된 키워드
00905. 00000 -  "missing keyword"
*Cause:    
*Action:

명령의 34 행에서 시작하는 중 오류 발생 -
CREATE TABLE LECTURE_TBL(
    LECTURE_NO      NUMBER                 NOT NULL,
    LECTURE_PRONO   VARCHAR2(5 BYTE)       NULL    ,
    LECTURE_APPLYNO NUMBER                 NULL    ,
    LECTURE_NAME    VARCHAR2(100 BYTE)     NULL    ,
    LECTURE_ROOM    VARCHAR2(100 BYTE)     NULL    ,
    CONSTRAINT PK_LECTURE PRIMARY KEY(LECTURE_NO)  ,
    CONSTRAINT FK_PROF_LECTURE FOREIGN KEY(LECTURE_PRONO) REFERENCES PROFESSOR_TBL(PRO_NO) ON DELETE SET NULL,
    CONSTRAINT FK_ENROLL_LECTURE FOREIGN KEY(LECTURE_APPLYNO) REFERENCES ENROLL_TBL(ENROLL_APPLYNO) ON DELETE SET NULL
)
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 46 행에서 시작하는 중 오류 발생 -
CREATE TABLE ENROLL_TBL(
    ENROLL_APPLYNO     NUMBER                   NOT NULL, 
    ENROLL_NO          VARCHAR2(5 BYTE)         NOT NULL,
    ENROLL_COURSE_NO   VARCHAR2(5 BYTE)         NOT NULL,
    ENROLL_DATE        DATE                     NULL    ,
    CONSTRAINT PK_ENROLL PRIMARY KEY(ENROLL_APPLYNO),
    CONSTRAINT FK_ENROLL FOREIGN KEY(ENROLL_COURSE_NO) REFERENCES COURSE_TBL(COURSE_NO) ON DELETE CASCADE
    CONSTRAINT FK_ENROLL FOREIGN KEY(ENROLL_APPLYNO) REFERENCES LECTURE_TBL(LECTURE_APPLYNO) ON DELETE CASCADE
)
오류 보고 -
ORA-00907: 누락된 우괄호
00907. 00000 -  "missing right parenthesis"
*Cause:    
*Action:

1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


명령의 63 행에서 시작하는 중 오류 발생 -
INSERT INTO COURSE_TBL(COURSE_NO, COURSE_NAME, COURSE_SCORE) VALUES('CE001', '자바', 3)
오류 발생 명령행: 63 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 64 행에서 시작하는 중 오류 발생 -
INSERT INTO COURSE_TBL(COURSE_NO, COURSE_NAME, COURSE_SCORE) VALUES('CE002', '데이터베이스', 3)
오류 발생 명령행: 64 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 65 행에서 시작하는 중 오류 발생 -
INSERT INTO COURSE_TBL(COURSE_NO, COURSE_NAME, COURSE_SCORE) VALUES('CE003', '서버프로그램', 3)
오류 발생 명령행: 65 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 67 행에서 시작하는 중 오류 발생 -
INSERT INTO STUDENT_TBL(STU_NO, STU_NAME, STU_ADDR, STU_GRADE, STU_PRONO) VALUES('21001', '고길동', '서울', 3, 'P0001')
오류 발생 명령행: 67 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 68 행에서 시작하는 중 오류 발생 -
INSERT INTO STUDENT_TBL(STU_NO, STU_NAME, STU_ADDR, STU_GRADE, STU_PRONO) VALUES('21002', '최무배', '경기', 3, 'P0002')
오류 발생 명령행: 68 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 69 행에서 시작하는 중 오류 발생 -
INSERT INTO STUDENT_TBL(STU_NO, STU_NAME, STU_ADDR, STU_GRADE, STU_PRONO) VALUES('22001', '강우림', '인천', 2, 'P0003')
오류 발생 명령행: 69 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 70 행에서 시작하는 중 오류 발생 -
INSERT INTO STUDENT_TBL(STU_NO, STU_NAME, STU_ADDR, STU_GRADE, STU_PRONO) VALUES('22002', '지수아', '제주', 2, 'P0001')
오류 발생 명령행: 70 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 71 행에서 시작하는 중 오류 발생 -
INSERT INTO STUDENT_TBL(STU_NO, STU_NAME, STU_ADDR, STU_GRADE, STU_PRONO) VALUES('23001', '김예림', '대구', 1, 'P0002')
오류 발생 명령행: 71 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 72 행에서 시작하는 중 오류 발생 -
INSERT INTO STUDENT_TBL(STU_NO, STU_NAME, STU_ADDR, STU_GRADE, STU_PRONO) VALUES('23002', '나태진', '광주', 1, 'P0003')
오류 발생 명령행: 72 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Sequence ENROLL_SEQ이(가) 삭제되었습니다.


Sequence ENROLL_SEQ이(가) 생성되었습니다.


명령의 76 행에서 시작하는 중 오류 발생 -
INSERT INTO ENROLL_TBL(ENROLL_APPLYNO, ENROLL_NO, ENROLL_COURSE_NO, ENROLL_DATE) VALUES (ENROLL_SEQ.NEXTVAL, '21001', 'CE001', '23-02-25')
오류 발생 명령행: 76 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 77 행에서 시작하는 중 오류 발생 -
INSERT INTO ENROLL_TBL(ENROLL_APPLYNO, ENROLL_NO, ENROLL_COURSE_NO, ENROLL_DATE) VALUES (ENROLL_SEQ.NEXTVAL, '21001', 'CE002', '23-02-25')
오류 발생 명령행: 77 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 78 행에서 시작하는 중 오류 발생 -
INSERT INTO ENROLL_TBL(ENROLL_APPLYNO, ENROLL_NO, ENROLL_COURSE_NO, ENROLL_DATE) VALUES (ENROLL_SEQ.NEXTVAL, '21001', 'CE003', '23-02-25')
오류 발생 명령행: 78 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Sequence LEC_SEQ이(가) 삭제되었습니다.


Sequence LEC_SEQ이(가) 생성되었습니다.


명령의 82 행에서 시작하는 중 오류 발생 -
INSERT INTO LECTURE_TB(LECTURE_NO, LECTURE_PRONO, LECTURE_APPLYNO, LECTURE_NAME, LECTURE_ROOM) VALUES (LEC_SEQ.NEXTVAL, 'P0001', 1, '자바완전정복', '101호')
오류 발생 명령행: 82 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 83 행에서 시작하는 중 오류 발생 -
INSERT INTO LECTURE_TB(LECTURE_NO, LECTURE_PRONO, LECTURE_APPLYNO, LECTURE_NAME, LECTURE_ROOM) VALUES (LEC_SEQ.NEXTVAL, 'P0002', 1, '자바완전정복', '102호')
오류 발생 명령행: 83 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 84 행에서 시작하는 중 오류 발생 -
INSERT INTO LECTURE_TB(LECTURE_NO, LECTURE_PRONO, LECTURE_APPLYNO, LECTURE_NAME, LECTURE_ROOM) VALUES (LEC_SEQ.NEXTVAL, 'P0003', 1, '자바완전정복', '103호')
오류 발생 명령행: 84 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:
커밋 완료.

명령의 1 행에서 시작하는 중 오류 발생 -
DROP TABLE ENROLL_TBL
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 2 행에서 시작하는 중 오류 발생 -
DROP TABLE LECTURE_TBL
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 3 행에서 시작하는 중 오류 발생 -
DROP TABLE STUDENT_TBL
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 4 행에서 시작하는 중 오류 발생 -
DROP TABLE COURSE_TBL
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Table PROFESSOR_TBL이(가) 삭제되었습니다.


Table PROFESSOR_TBL이(가) 생성되었습니다.


명령의 15 행에서 시작하는 중 오류 발생 -
CREATE TABLE COURSE_TBL(
    COURSE_NO      VARCHAR2(5 BYTE)        NOT NULL,
    COURSE_NAME    VARCHAR2(20 BYTE)       NULL    ,
    COURSE_SCORE   NUMBER(1)               NULL
    CONSTRAINT PK_COURSE PRIMARY KEY(COURSE_NO)
)
오류 보고 -
ORA-00907: 누락된 우괄호
00907. 00000 -  "missing right parenthesis"
*Cause:    
*Action:

명령의 23 행에서 시작하는 중 오류 발생 -
CREATE TABLE STUDENT_TBL(
    STU_NO        VARCHAR2(5 BYTE)         NOT NULL,
    STU_NAME      VARCHAR2(10 BYTE)        NULL    ,
    STU_ADDR      VARCHAR2(50 BYTE)        NULL    ,
    STU_GRADE     NUMBER(1)                NULL    ,
    STU_PRONO     VARCHAR2(10 BYTE)        NOT NULL,
    CONSTRAINT PK_STUDENT FOREIGN KEY(STU_NO),
    CONSTRAINT FK_STUDENT FOREIGN KEY(STU_PRONO) REFERENCES PROFESSOR_TBL(PRO_NO) ON DELETE CASCADE
)
오류 보고 -
ORA-00905: 누락된 키워드
00905. 00000 -  "missing keyword"
*Cause:    
*Action:

명령의 34 행에서 시작하는 중 오류 발생 -
CREATE TABLE LECTURE_TBL(
    LECTURE_NO      NUMBER                 NOT NULL,
    LECTURE_PRONO   VARCHAR2(5 BYTE)       NULL    ,
    LECTURE_APPLYNO NUMBER                 NULL    ,
    LECTURE_NAME    VARCHAR2(100 BYTE)     NULL    ,
    LECTURE_ROOM    VARCHAR2(100 BYTE)     NULL    ,
    CONSTRAINT PK_LECTURE PRIMARY KEY(LECTURE_NO)  ,
    CONSTRAINT FK_PROF_LECTURE FOREIGN KEY(LECTURE_PRONO) REFERENCES PROFESSOR_TBL(PRO_NO) ON DELETE SET NULL,
    CONSTRAINT FK_ENROLL_LECTURE FOREIGN KEY(LECTURE_APPLYNO) REFERENCES ENROLL_TBL(ENROLL_APPLYNO) ON DELETE SET NULL
)
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 46 행에서 시작하는 중 오류 발생 -
CREATE TABLE ENROLL_TBL(
    ENROLL_APPLYNO     NUMBER                   NOT NULL, 
    ENROLL_NO          VARCHAR2(5 BYTE)         NOT NULL,
    ENROLL_COURSE_NO   NUMBER         NOT NULL,
    ENROLL_DATE        DATE                     NULL    ,
    CONSTRAINT PK_ENROLL PRIMARY KEY(ENROLL_APPLYNO),
    CONSTRAINT FK_ENROLL FOREIGN KEY(ENROLL_COURSE_NO) REFERENCES COURSE_TBL(COURSE_NO) ON DELETE CASCADE
    CONSTRAINT FK_ENROLL FOREIGN KEY(ENROLL_APPLYNO) REFERENCES LECTURE_TBL(LECTURE_APPLYNO) ON DELETE CASCADE
)
오류 보고 -
ORA-00907: 누락된 우괄호
00907. 00000 -  "missing right parenthesis"
*Cause:    
*Action:

1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


명령의 63 행에서 시작하는 중 오류 발생 -
INSERT INTO COURSE_TBL(COURSE_NO, COURSE_NAME, COURSE_SCORE) VALUES('CE001', '자바', 3)
오류 발생 명령행: 63 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 64 행에서 시작하는 중 오류 발생 -
INSERT INTO COURSE_TBL(COURSE_NO, COURSE_NAME, COURSE_SCORE) VALUES('CE002', '데이터베이스', 3)
오류 발생 명령행: 64 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 65 행에서 시작하는 중 오류 발생 -
INSERT INTO COURSE_TBL(COURSE_NO, COURSE_NAME, COURSE_SCORE) VALUES('CE003', '서버프로그램', 3)
오류 발생 명령행: 65 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 67 행에서 시작하는 중 오류 발생 -
INSERT INTO STUDENT_TBL(STU_NO, STU_NAME, STU_ADDR, STU_GRADE, STU_PRONO) VALUES('21001', '고길동', '서울', 3, 'P0001')
오류 발생 명령행: 67 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 68 행에서 시작하는 중 오류 발생 -
INSERT INTO STUDENT_TBL(STU_NO, STU_NAME, STU_ADDR, STU_GRADE, STU_PRONO) VALUES('21002', '최무배', '경기', 3, 'P0002')
오류 발생 명령행: 68 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 69 행에서 시작하는 중 오류 발생 -
INSERT INTO STUDENT_TBL(STU_NO, STU_NAME, STU_ADDR, STU_GRADE, STU_PRONO) VALUES('22001', '강우림', '인천', 2, 'P0003')
오류 발생 명령행: 69 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 70 행에서 시작하는 중 오류 발생 -
INSERT INTO STUDENT_TBL(STU_NO, STU_NAME, STU_ADDR, STU_GRADE, STU_PRONO) VALUES('22002', '지수아', '제주', 2, 'P0001')
오류 발생 명령행: 70 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 71 행에서 시작하는 중 오류 발생 -
INSERT INTO STUDENT_TBL(STU_NO, STU_NAME, STU_ADDR, STU_GRADE, STU_PRONO) VALUES('23001', '김예림', '대구', 1, 'P0002')
오류 발생 명령행: 71 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 72 행에서 시작하는 중 오류 발생 -
INSERT INTO STUDENT_TBL(STU_NO, STU_NAME, STU_ADDR, STU_GRADE, STU_PRONO) VALUES('23002', '나태진', '광주', 1, 'P0003')
오류 발생 명령행: 72 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Sequence ENROLL_SEQ이(가) 삭제되었습니다.


Sequence ENROLL_SEQ이(가) 생성되었습니다.


명령의 76 행에서 시작하는 중 오류 발생 -
INSERT INTO ENROLL_TBL(ENROLL_APPLYNO, ENROLL_NO, ENROLL_COURSE_NO, ENROLL_DATE) VALUES (ENROLL_SEQ.NEXTVAL, '21001', 'CE001', '23-02-25')
오류 발생 명령행: 76 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 77 행에서 시작하는 중 오류 발생 -
INSERT INTO ENROLL_TBL(ENROLL_APPLYNO, ENROLL_NO, ENROLL_COURSE_NO, ENROLL_DATE) VALUES (ENROLL_SEQ.NEXTVAL, '21001', 'CE002', '23-02-25')
오류 발생 명령행: 77 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 78 행에서 시작하는 중 오류 발생 -
INSERT INTO ENROLL_TBL(ENROLL_APPLYNO, ENROLL_NO, ENROLL_COURSE_NO, ENROLL_DATE) VALUES (ENROLL_SEQ.NEXTVAL, '21001', 'CE003', '23-02-25')
오류 발생 명령행: 78 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Sequence LEC_SEQ이(가) 삭제되었습니다.


Sequence LEC_SEQ이(가) 생성되었습니다.


명령의 82 행에서 시작하는 중 오류 발생 -
INSERT INTO LECTURE_TB(LECTURE_NO, LECTURE_PRONO, LECTURE_APPLYNO, LECTURE_NAME, LECTURE_ROOM) VALUES (LEC_SEQ.NEXTVAL, 'P0001', 1, '자바완전정복', '101호')
오류 발생 명령행: 82 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 83 행에서 시작하는 중 오류 발생 -
INSERT INTO LECTURE_TB(LECTURE_NO, LECTURE_PRONO, LECTURE_APPLYNO, LECTURE_NAME, LECTURE_ROOM) VALUES (LEC_SEQ.NEXTVAL, 'P0002', 1, '자바완전정복', '102호')
오류 발생 명령행: 83 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 84 행에서 시작하는 중 오류 발생 -
INSERT INTO LECTURE_TB(LECTURE_NO, LECTURE_PRONO, LECTURE_APPLYNO, LECTURE_NAME, LECTURE_ROOM) VALUES (LEC_SEQ.NEXTVAL, 'P0003', 1, '자바완전정복', '103호')
오류 발생 명령행: 84 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:
커밋 완료.

명령의 1 행에서 시작하는 중 오류 발생 -
DROP TABLE ENROLL_TBL
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 2 행에서 시작하는 중 오류 발생 -
DROP TABLE LECTURE_TBL
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 3 행에서 시작하는 중 오류 발생 -
DROP TABLE STUDENT_TBL
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 4 행에서 시작하는 중 오류 발생 -
DROP TABLE COURSE_TBL
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Table PROFESSOR_TBL이(가) 삭제되었습니다.


Table PROFESSOR_TBL이(가) 생성되었습니다.


Table COURSE_TBL이(가) 생성되었습니다.


명령의 23 행에서 시작하는 중 오류 발생 -
CREATE TABLE STUDENT_TBL(
    STU_NO        VARCHAR2(5 BYTE)         NOT NULL,
    STU_NAME      VARCHAR2(10 BYTE)        NULL    ,
    STU_ADDR      VARCHAR2(50 BYTE)        NULL    ,
    STU_GRADE     NUMBER(1)                NULL    ,
    STU_PRONO     VARCHAR2(10 BYTE)        NOT NULL,
    CONSTRAINT PK_STUDENT FOREIGN KEY(STU_NO),
    CONSTRAINT FK_STUDENT FOREIGN KEY(STU_PRONO) REFERENCES PROFESSOR_TBL(PRO_NO) ON DELETE CASCADE
)
오류 보고 -
ORA-00905: 누락된 키워드
00905. 00000 -  "missing keyword"
*Cause:    
*Action:

명령의 34 행에서 시작하는 중 오류 발생 -
CREATE TABLE LECTURE_TBL(
    LECTURE_NO      NUMBER                 NOT NULL,
    LECTURE_PRONO   VARCHAR2(5 BYTE)       NULL    ,
    LECTURE_APPLYNO NUMBER                 NULL    ,
    LECTURE_NAME    VARCHAR2(100 BYTE)     NULL    ,
    LECTURE_ROOM    VARCHAR2(100 BYTE)     NULL    ,
    CONSTRAINT PK_LECTURE PRIMARY KEY(LECTURE_NO)  ,
    CONSTRAINT FK_PROF_LECTURE FOREIGN KEY(LECTURE_PRONO) REFERENCES PROFESSOR_TBL(PRO_NO) ON DELETE SET NULL,
    CONSTRAINT FK_ENROLL_LECTURE FOREIGN KEY(LECTURE_APPLYNO) REFERENCES ENROLL_TBL(ENROLL_APPLYNO) ON DELETE SET NULL
)
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 46 행에서 시작하는 중 오류 발생 -
CREATE TABLE ENROLL_TBL(
    ENROLL_APPLYNO     NUMBER                   NOT NULL, 
    ENROLL_NO          VARCHAR2(5 BYTE)         NOT NULL,
    ENROLL_COURSE_NO   NUMBER         NOT NULL,
    ENROLL_DATE        DATE                     NULL    ,
    CONSTRAINT PK_ENROLL PRIMARY KEY(ENROLL_APPLYNO),
    CONSTRAINT FK_ENROLL FOREIGN KEY(ENROLL_COURSE_NO) REFERENCES COURSE_TBL(COURSE_NO) ON DELETE CASCADE
    CONSTRAINT FK_ENROLL FOREIGN KEY(ENROLL_APPLYNO) REFERENCES LECTURE_TBL(LECTURE_APPLYNO) ON DELETE CASCADE
)
오류 보고 -
ORA-00907: 누락된 우괄호
00907. 00000 -  "missing right parenthesis"
*Cause:    
*Action:

1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


명령의 67 행에서 시작하는 중 오류 발생 -
INSERT INTO STUDENT_TBL(STU_NO, STU_NAME, STU_ADDR, STU_GRADE, STU_PRONO) VALUES('21001', '고길동', '서울', 3, 'P0001')
오류 발생 명령행: 67 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 68 행에서 시작하는 중 오류 발생 -
INSERT INTO STUDENT_TBL(STU_NO, STU_NAME, STU_ADDR, STU_GRADE, STU_PRONO) VALUES('21002', '최무배', '경기', 3, 'P0002')
오류 발생 명령행: 68 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 69 행에서 시작하는 중 오류 발생 -
INSERT INTO STUDENT_TBL(STU_NO, STU_NAME, STU_ADDR, STU_GRADE, STU_PRONO) VALUES('22001', '강우림', '인천', 2, 'P0003')
오류 발생 명령행: 69 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 70 행에서 시작하는 중 오류 발생 -
INSERT INTO STUDENT_TBL(STU_NO, STU_NAME, STU_ADDR, STU_GRADE, STU_PRONO) VALUES('22002', '지수아', '제주', 2, 'P0001')
오류 발생 명령행: 70 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 71 행에서 시작하는 중 오류 발생 -
INSERT INTO STUDENT_TBL(STU_NO, STU_NAME, STU_ADDR, STU_GRADE, STU_PRONO) VALUES('23001', '김예림', '대구', 1, 'P0002')
오류 발생 명령행: 71 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 72 행에서 시작하는 중 오류 발생 -
INSERT INTO STUDENT_TBL(STU_NO, STU_NAME, STU_ADDR, STU_GRADE, STU_PRONO) VALUES('23002', '나태진', '광주', 1, 'P0003')
오류 발생 명령행: 72 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Sequence ENROLL_SEQ이(가) 삭제되었습니다.


Sequence ENROLL_SEQ이(가) 생성되었습니다.


명령의 76 행에서 시작하는 중 오류 발생 -
INSERT INTO ENROLL_TBL(ENROLL_APPLYNO, ENROLL_NO, ENROLL_COURSE_NO, ENROLL_DATE) VALUES (ENROLL_SEQ.NEXTVAL, '21001', 'CE001', '23-02-25')
오류 발생 명령행: 76 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 77 행에서 시작하는 중 오류 발생 -
INSERT INTO ENROLL_TBL(ENROLL_APPLYNO, ENROLL_NO, ENROLL_COURSE_NO, ENROLL_DATE) VALUES (ENROLL_SEQ.NEXTVAL, '21001', 'CE002', '23-02-25')
오류 발생 명령행: 77 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 78 행에서 시작하는 중 오류 발생 -
INSERT INTO ENROLL_TBL(ENROLL_APPLYNO, ENROLL_NO, ENROLL_COURSE_NO, ENROLL_DATE) VALUES (ENROLL_SEQ.NEXTVAL, '21001', 'CE003', '23-02-25')
오류 발생 명령행: 78 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Sequence LEC_SEQ이(가) 삭제되었습니다.


Sequence LEC_SEQ이(가) 생성되었습니다.


명령의 82 행에서 시작하는 중 오류 발생 -
INSERT INTO LECTURE_TB(LECTURE_NO, LECTURE_PRONO, LECTURE_APPLYNO, LECTURE_NAME, LECTURE_ROOM) VALUES (LEC_SEQ.NEXTVAL, 'P0001', 1, '자바완전정복', '101호')
오류 발생 명령행: 82 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 83 행에서 시작하는 중 오류 발생 -
INSERT INTO LECTURE_TB(LECTURE_NO, LECTURE_PRONO, LECTURE_APPLYNO, LECTURE_NAME, LECTURE_ROOM) VALUES (LEC_SEQ.NEXTVAL, 'P0002', 1, '자바완전정복', '102호')
오류 발생 명령행: 83 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 84 행에서 시작하는 중 오류 발생 -
INSERT INTO LECTURE_TB(LECTURE_NO, LECTURE_PRONO, LECTURE_APPLYNO, LECTURE_NAME, LECTURE_ROOM) VALUES (LEC_SEQ.NEXTVAL, 'P0003', 1, '자바완전정복', '103호')
오류 발생 명령행: 84 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:
커밋 완료.

명령의 1 행에서 시작하는 중 오류 발생 -
DROP TABLE ENROLL_TBL
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 2 행에서 시작하는 중 오류 발생 -
DROP TABLE LECTURE_TBL
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 3 행에서 시작하는 중 오류 발생 -
DROP TABLE STUDENT_TBL
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Table COURSE_TBL이(가) 삭제되었습니다.


Table PROFESSOR_TBL이(가) 삭제되었습니다.


Table PROFESSOR_TBL이(가) 생성되었습니다.


Table COURSE_TBL이(가) 생성되었습니다.


Table STUDENT_TBL이(가) 생성되었습니다.


명령의 34 행에서 시작하는 중 오류 발생 -
CREATE TABLE LECTURE_TBL(
    LECTURE_NO      NUMBER                 NOT NULL,
    LECTURE_PRONO   VARCHAR2(5 BYTE)       NULL    ,
    LECTURE_APPLYNO NUMBER                 NULL    ,
    LECTURE_NAME    VARCHAR2(100 BYTE)     NULL    ,
    LECTURE_ROOM    VARCHAR2(100 BYTE)     NULL    ,
    CONSTRAINT PK_LECTURE PRIMARY KEY(LECTURE_NO)  ,
    CONSTRAINT FK_PROF_LECTURE FOREIGN KEY(LECTURE_PRONO) REFERENCES PROFESSOR_TBL(PRO_NO) ON DELETE SET NULL,
    CONSTRAINT FK_ENROLL_LECTURE FOREIGN KEY(LECTURE_APPLYNO) REFERENCES ENROLL_TBL(ENROLL_APPLYNO) ON DELETE SET NULL
)
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 46 행에서 시작하는 중 오류 발생 -
CREATE TABLE ENROLL_TBL(
    ENROLL_APPLYNO     NUMBER                   NOT NULL, 
    ENROLL_NO          VARCHAR2(5 BYTE)         NOT NULL,
    ENROLL_COURSE_NO   NUMBER         NOT NULL,
    ENROLL_DATE        DATE                     NULL    ,
    CONSTRAINT PK_ENROLL PRIMARY KEY(ENROLL_APPLYNO),
    CONSTRAINT FK_ENROLL FOREIGN KEY(ENROLL_COURSE_NO) REFERENCES COURSE_TBL(COURSE_NO) ON DELETE CASCADE
    CONSTRAINT FK_ENROLL FOREIGN KEY(ENROLL_APPLYNO) REFERENCES LECTURE_TBL(LECTURE_APPLYNO) ON DELETE CASCADE
)
오류 보고 -
ORA-00907: 누락된 우괄호
00907. 00000 -  "missing right parenthesis"
*Cause:    
*Action:

1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


Sequence ENROLL_SEQ이(가) 삭제되었습니다.


Sequence ENROLL_SEQ이(가) 생성되었습니다.


명령의 76 행에서 시작하는 중 오류 발생 -
INSERT INTO ENROLL_TBL(ENROLL_APPLYNO, ENROLL_NO, ENROLL_COURSE_NO, ENROLL_DATE) VALUES (ENROLL_SEQ.NEXTVAL, '21001', 'CE001', '23-02-25')
오류 발생 명령행: 76 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 77 행에서 시작하는 중 오류 발생 -
INSERT INTO ENROLL_TBL(ENROLL_APPLYNO, ENROLL_NO, ENROLL_COURSE_NO, ENROLL_DATE) VALUES (ENROLL_SEQ.NEXTVAL, '21001', 'CE002', '23-02-25')
오류 발생 명령행: 77 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 78 행에서 시작하는 중 오류 발생 -
INSERT INTO ENROLL_TBL(ENROLL_APPLYNO, ENROLL_NO, ENROLL_COURSE_NO, ENROLL_DATE) VALUES (ENROLL_SEQ.NEXTVAL, '21001', 'CE003', '23-02-25')
오류 발생 명령행: 78 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Sequence LEC_SEQ이(가) 삭제되었습니다.


Sequence LEC_SEQ이(가) 생성되었습니다.


명령의 82 행에서 시작하는 중 오류 발생 -
INSERT INTO LECTURE_TB(LECTURE_NO, LECTURE_PRONO, LECTURE_APPLYNO, LECTURE_NAME, LECTURE_ROOM) VALUES (LEC_SEQ.NEXTVAL, 'P0001', 1, '자바완전정복', '101호')
오류 발생 명령행: 82 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 83 행에서 시작하는 중 오류 발생 -
INSERT INTO LECTURE_TB(LECTURE_NO, LECTURE_PRONO, LECTURE_APPLYNO, LECTURE_NAME, LECTURE_ROOM) VALUES (LEC_SEQ.NEXTVAL, 'P0002', 1, '자바완전정복', '102호')
오류 발생 명령행: 83 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 84 행에서 시작하는 중 오류 발생 -
INSERT INTO LECTURE_TB(LECTURE_NO, LECTURE_PRONO, LECTURE_APPLYNO, LECTURE_NAME, LECTURE_ROOM) VALUES (LEC_SEQ.NEXTVAL, 'P0003', 1, '자바완전정복', '103호')
오류 발생 명령행: 84 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:
커밋 완료.

명령의 1 행에서 시작하는 중 오류 발생 -
DROP TABLE ENROLL_TBL
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 2 행에서 시작하는 중 오류 발생 -
DROP TABLE LECTURE_TBL
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Table STUDENT_TBL이(가) 삭제되었습니다.


Table COURSE_TBL이(가) 삭제되었습니다.


Table PROFESSOR_TBL이(가) 삭제되었습니다.


Table PROFESSOR_TBL이(가) 생성되었습니다.


Table COURSE_TBL이(가) 생성되었습니다.


Table STUDENT_TBL이(가) 생성되었습니다.


명령의 34 행에서 시작하는 중 오류 발생 -
CREATE TABLE LECTURE_TBL(
    LECTURE_NO      NUMBER                 NOT NULL,
    LECTURE_PRONO   VARCHAR2(5 BYTE)       NULL    ,
    LECTURE_APPLYNO NUMBER                 NULL    ,
    LECTURE_NAME    VARCHAR2(100 BYTE)     NULL    ,
    LECTURE_ROOM    VARCHAR2(100 BYTE)     NULL    ,
    CONSTRAINT PK_LECTURE PRIMARY KEY(LECTURE_NO)  ,
    CONSTRAINT FK_PROF_LECTURE FOREIGN KEY(LECTURE_PRONO) REFERENCES PROFESSOR_TBL(PRO_NO) ON DELETE SET NULL,
    CONSTRAINT FK_ENROLL_LECTURE FOREIGN KEY(LECTURE_APPLYNO) REFERENCES ENROLL_TBL(ENROLL_APPLYNO) ON DELETE SET NULL
)
오류 보고 -
ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 46 행에서 시작하는 중 오류 발생 -
CREATE TABLE ENROLL_TBL(
    ENROLL_APPLYNO     NUMBER                   NOT NULL, 
    ENROLL_NO          VARCHAR2(5 BYTE)         NOT NULL,
    ENROLL_COURSE_NO   NUMBER         NOT NULL,
    ENROLL_DATE        DATE                     NULL    ,
    CONSTRAINT PK_ENROLL PRIMARY KEY(ENROLL_APPLYNO),
    CONSTRAINT FK_ENROLL FOREIGN KEY(ENROLL_COURSE_NO) REFERENCES COURSE_TBL(COURSE_NO) ON DELETE CASCADE
    CONSTRAINT FK_ENROLL FOREIGN KEY(ENROLL_APPLYNO) REFERENCES LECTURE_TBL(LECTURE_APPLYNO) ON DELETE CASCADE
)
오류 보고 -
ORA-00907: 누락된 우괄호
00907. 00000 -  "missing right parenthesis"
*Cause:    
*Action:

1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


Sequence ENROLL_SEQ이(가) 삭제되었습니다.


Sequence ENROLL_SEQ이(가) 생성되었습니다.


명령의 76 행에서 시작하는 중 오류 발생 -
INSERT INTO ENROLL_TBL(ENROLL_APPLYNO, ENROLL_NO, ENROLL_COURSE_NO, ENROLL_DATE) VALUES (ENROLL_SEQ.NEXTVAL, '21001', 'CE001', '23-02-25')
오류 발생 명령행: 76 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 77 행에서 시작하는 중 오류 발생 -
INSERT INTO ENROLL_TBL(ENROLL_APPLYNO, ENROLL_NO, ENROLL_COURSE_NO, ENROLL_DATE) VALUES (ENROLL_SEQ.NEXTVAL, '21001', 'CE002', '23-02-25')
오류 발생 명령행: 77 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 78 행에서 시작하는 중 오류 발생 -
INSERT INTO ENROLL_TBL(ENROLL_APPLYNO, ENROLL_NO, ENROLL_COURSE_NO, ENROLL_DATE) VALUES (ENROLL_SEQ.NEXTVAL, '21001', 'CE003', '23-02-25')
오류 발생 명령행: 78 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Sequence LEC_SEQ이(가) 삭제되었습니다.


Sequence LEC_SEQ이(가) 생성되었습니다.


명령의 82 행에서 시작하는 중 오류 발생 -
INSERT INTO LECTURE_TB(LECTURE_NO, LECTURE_PRONO, LECTURE_APPLYNO, LECTURE_NAME, LECTURE_ROOM) VALUES (LEC_SEQ.NEXTVAL, 'P0001', 1, '자바완전정복', '101호')
오류 발생 명령행: 82 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 83 행에서 시작하는 중 오류 발생 -
INSERT INTO LECTURE_TB(LECTURE_NO, LECTURE_PRONO, LECTURE_APPLYNO, LECTURE_NAME, LECTURE_ROOM) VALUES (LEC_SEQ.NEXTVAL, 'P0002', 1, '자바완전정복', '102호')
오류 발생 명령행: 83 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 84 행에서 시작하는 중 오류 발생 -
INSERT INTO LECTURE_TB(LECTURE_NO, LECTURE_PRONO, LECTURE_APPLYNO, LECTURE_NAME, LECTURE_ROOM) VALUES (LEC_SEQ.NEXTVAL, 'P0003', 1, '자바완전정복', '103호')
오류 발생 명령행: 84 열: 13
오류 보고 -
SQL 오류: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:
커밋 완료.
