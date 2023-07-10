-- 테이블 삭제
DROP TABLE BUY_T;
DROP TABLE PRODUCT_T;
DROP TABLE USER_T;

-- 사용자 테이블
CREATE TABLE USER_T (
    USER_NO      NUMBER             NOT NULL         -- 사용자번호(기본키)
  , USER_ID      VARCHAR2(20 BYTE)  NOT NULL UNIQUE  -- 사용자아이디
  , USER_NAME    VARCHAR2(20 BYTE)  NULL             -- 사용자명
  , USER_YEAR    NUMBER(4)          NULL             -- 태어난년도
  , USER_ADDR    VARCHAR2(100 BYTE) NULL             -- 주소
  , USER_MOBILE1 VARCHAR2(3 BYTE)   NULL             -- 연락처1(010, 011 등)
  , USER_MOBILE2 VARCHAR2(8 BYTE)   NULL             -- 연락처2(12345678, 11111111 등)
  , USER_REGDATE DATE               NULL             -- 등록일
  , CONSTRAINT PK_USER PRIMARY KEY(USER_NO)
);

-- 제품 테이블
CREATE TABLE PRODUCT_T (
    PROD_CODE     NUMBER            NOT NULL
  , PROD_NAME     VARCHAR2(20 BYTE) NULL
  , PROD_CATEGORY VARCHAR2(20 BYTE) NULL
  , PROD_PRICE    NUMBER            NULL
  , CONSTRAINT PK_PRODUCT PRIMARY KEY(PROD_CODE)
);

-- 구매 테이블
CREATE TABLE BUY_T (
    BUY_NO     NUMBER NOT NULL
  , USER_NO    NUMBER NULL
  , PROD_CODE  NUMBER NULL
  , BUY_AMOUNT NUMBER NULL
  , CONSTRAINT PK_BUY PRIMARY KEY(BUY_NO)
  , CONSTRAINT FK_USER_BUY    FOREIGN KEY(USER_NO)   REFERENCES USER_T(USER_NO)
  , CONSTRAINT FK_PRODUCT_BUY FOREIGN KEY(PROD_CODE) REFERENCES PRODUCT_T(PROD_CODE) ON DELETE SET NULL
);

-- 사용자 시퀀스
DROP SEQUENCE USER_SEQ;
CREATE SEQUENCE USER_SEQ ORDER;

-- 제품 시퀀스
DROP SEQUENCE PRODUCT_SEQ;
CREATE SEQUENCE PRODUCT_SEQ ORDER;

-- 구매 시퀀스
DROP SEQUENCE BUY_SEQ;
CREATE SEQUENCE BUY_SEQ ORDER;

-- 사용자 테이블 데이터
INSERT INTO USER_T(USER_NO, USER_ID, USER_NAME, USER_YEAR, USER_ADDR, USER_MOBILE1, USER_MOBILE2, USER_REGDATE) VALUES (USER_SEQ.NEXTVAL, 'YJS', '유재석', 1972, '서울', '010', '11111111', '08/08/08');
INSERT INTO USER_T(USER_NO, USER_ID, USER_NAME, USER_YEAR, USER_ADDR, USER_MOBILE1, USER_MOBILE2, USER_REGDATE) VALUES (USER_SEQ.NEXTVAL, 'KHD', '강호동', 1970, '경북', '011', '22222222', '07/07/07');
INSERT INTO USER_T(USER_NO, USER_ID, USER_NAME, USER_YEAR, USER_ADDR, USER_MOBILE1, USER_MOBILE2, USER_REGDATE) VALUES (USER_SEQ.NEXTVAL, 'KKJ', '김국진', 1965, '서울', '010', '33333333', '09/09/09');
INSERT INTO USER_T(USER_NO, USER_ID, USER_NAME, USER_YEAR, USER_ADDR, USER_MOBILE1, USER_MOBILE2, USER_REGDATE) VALUES (USER_SEQ.NEXTVAL, 'KYM', '김용만', 1967, '서울', '010', '44444444', '15/05/05');
INSERT INTO USER_T(USER_NO, USER_ID, USER_NAME, USER_YEAR, USER_ADDR, USER_MOBILE1, USER_MOBILE2, USER_REGDATE) VALUES (USER_SEQ.NEXTVAL, 'KJD', '김제동', 1974, '경남', NULL, NULL, '13/03/03');
INSERT INTO USER_T(USER_NO, USER_ID, USER_NAME, USER_YEAR, USER_ADDR, USER_MOBILE1, USER_MOBILE2, USER_REGDATE) VALUES (USER_SEQ.NEXTVAL, 'NHS', '남희석', 1971, '충남', '010', '55555555', '14/04/04');
INSERT INTO USER_T(USER_NO, USER_ID, USER_NAME, USER_YEAR, USER_ADDR, USER_MOBILE1, USER_MOBILE2, USER_REGDATE) VALUES (USER_SEQ.NEXTVAL, 'SDY', '신동엽', 1971, '경기', NULL, NULL, '08/10/10');
INSERT INTO USER_T(USER_NO, USER_ID, USER_NAME, USER_YEAR, USER_ADDR, USER_MOBILE1, USER_MOBILE2, USER_REGDATE) VALUES (USER_SEQ.NEXTVAL, 'LHJ', '이휘재', 1972, '경기', '011', '66666666', '06/04/04');
INSERT INTO USER_T(USER_NO, USER_ID, USER_NAME, USER_YEAR, USER_ADDR, USER_MOBILE1, USER_MOBILE2, USER_REGDATE) VALUES (USER_SEQ.NEXTVAL, 'LKK', '이경규', 1960, '경남', '011', '77777777', '04/12/12');
INSERT INTO USER_T(USER_NO, USER_ID, USER_NAME, USER_YEAR, USER_ADDR, USER_MOBILE1, USER_MOBILE2, USER_REGDATE) VALUES (USER_SEQ.NEXTVAL, 'PSH', '박수홍', 1970, '서울', '010', '88888888', '12/05/05');

-- 제품 테이블 데이터
INSERT INTO PRODUCT_T(PROD_CODE, PROD_NAME, PROD_CATEGORY, PROD_PRICE) VALUES (PRODUCT_SEQ.NEXTVAL, '운동화', '신발', 30);
INSERT INTO PRODUCT_T(PROD_CODE, PROD_NAME, PROD_CATEGORY, PROD_PRICE) VALUES (PRODUCT_SEQ.NEXTVAL, '청바지', '의류', 50);
INSERT INTO PRODUCT_T(PROD_CODE, PROD_NAME, PROD_CATEGORY, PROD_PRICE) VALUES (PRODUCT_SEQ.NEXTVAL, '책', '잡화', 15);
INSERT INTO PRODUCT_T(PROD_CODE, PROD_NAME, PROD_CATEGORY, PROD_PRICE) VALUES (PRODUCT_SEQ.NEXTVAL, '노트북', '전자', 1000);
INSERT INTO PRODUCT_T(PROD_CODE, PROD_NAME, PROD_CATEGORY, PROD_PRICE) VALUES (PRODUCT_SEQ.NEXTVAL, '모니터', '전자', 200);
INSERT INTO PRODUCT_T(PROD_CODE, PROD_NAME, PROD_CATEGORY, PROD_PRICE) VALUES (PRODUCT_SEQ.NEXTVAL, '메모리', '전자', 80);
INSERT INTO PRODUCT_T(PROD_CODE, PROD_NAME, PROD_CATEGORY, PROD_PRICE) VALUES (PRODUCT_SEQ.NEXTVAL, '벨트', '잡화', 30);

-- 구매 테이블 데이터
INSERT INTO BUY_T(BUY_NO, USER_NO, PROD_CODE, BUY_AMOUNT) VALUES(BUY_SEQ.NEXTVAL, 2, 1, 2);
INSERT INTO BUY_T(BUY_NO, USER_NO, PROD_CODE, BUY_AMOUNT) VALUES(BUY_SEQ.NEXTVAL, 2, 4, 1);
INSERT INTO BUY_T(BUY_NO, USER_NO, PROD_CODE, BUY_AMOUNT) VALUES(BUY_SEQ.NEXTVAL, 4, 5, 1);
INSERT INTO BUY_T(BUY_NO, USER_NO, PROD_CODE, BUY_AMOUNT) VALUES(BUY_SEQ.NEXTVAL, 10, 5, 5);
INSERT INTO BUY_T(BUY_NO, USER_NO, PROD_CODE, BUY_AMOUNT) VALUES(BUY_SEQ.NEXTVAL, 2, 2, 3);
INSERT INTO BUY_T(BUY_NO, USER_NO, PROD_CODE, BUY_AMOUNT) VALUES(BUY_SEQ.NEXTVAL, 10, 6, 10);
INSERT INTO BUY_T(BUY_NO, USER_NO, PROD_CODE, BUY_AMOUNT) VALUES(BUY_SEQ.NEXTVAL, 5, 3, 5);
INSERT INTO BUY_T(BUY_NO, USER_NO, PROD_CODE, BUY_AMOUNT) VALUES(BUY_SEQ.NEXTVAL, 8, 3, 2);
INSERT INTO BUY_T(BUY_NO, USER_NO, PROD_CODE, BUY_AMOUNT) VALUES(BUY_SEQ.NEXTVAL, 8, 2, 1);
INSERT INTO BUY_T(BUY_NO, USER_NO, PROD_CODE, BUY_AMOUNT) VALUES(BUY_SEQ.NEXTVAL, 10, 1, 2);

COMMIT;


/****************************** 문 제 ****************************************/

-- 1. 연락처1이 없는 사용자의 사용자번호, 아이디, 연락처1, 연락처2를 조회하시오.
SELECT USER_NO, USER_ID, USER_MOBILE1, USER_MOBILE2
  FROM USER_T
 WHERE USER_MOBILE1 IS NULL;

-- 2. 연락처2가 '5'로 시작하는 사용자의 사용자번호, 아이디, 연락처1, 연락처2를 조회하시오.
SELECT USER_NO, USER_ID, USER_MOBILE1, USER_MOBILE2
  FROM USER_T
 WHERE USER_MOBILE2 LIKE '5%';

-- 3. 2010년 이후에 가입한 사용자의 사용자번호, 아이디, 가입일을 조회하시오.
SELECT USER_NO, USER_ID, USER_REGDATE
  FROM USER_T
 WHERE EXTRACT(YEAR FROM USER_REGDATE) >= 2010;                    --년도 추출하는 함수

-- 4. 사용자번호와 연락처1, 연락처2를 연결하여 조회하시오. 연락처가 없는 경우 NULL 대신 'None'으로 조회하시오.
SELECT USER_NO, NVL(CONCAT(USER_MOBILE1, USER_MOBILE2), 'None')    --None은 NULL값 대신 들어갈 값
  FROM USER_T;

-- 5. 지역별(GROUPING) 사용자수를 조회하시오.
-- 주소   사용자수
-- 경북   1
-- 경남   2
-- 서울   4
-- 경기   2
-- 충남   1
SELECT USER_ADDR AS 주소 
     , COUNT(*)  AS 사용자수
  FROM USER_T
 GROUP BY USER_ADDR;                              --GROUP한것만 SELECT에서 조회할 수 있다.

-- 6. '서울', '경기'를 제외한 지역별 사용자수를 조회하시오.
-- 주소   사용자수
-- 경북   1
-- 경남   2
-- 충남   1
SELECT USER_ADDR AS 주소
     , COUNT(*) AS  사용자수
  FROM USER_T
-- WHERE USER_ADDR != '서울' AND USER_ADDR != '경기'
 WHERE USER_ADDR NOT IN('서울', '경기')
 GROUP BY USER_ADDR;

--  그룹핑 이전 : WHERE
--  그룹핑 이후 : HAVING - 지역별 사용자수가 2명 이상인

-- 7. 구매내역이 없는 사용자를 조회하시오.      --다중테이블 처리방식
-- 번호  아이디
-- 6     HNS
-- 1     YJS
-- 7     SDY
-- 3     KKJ
-- 9     LKK
SELECT USER_NO AS 번호
     ,  USER_ID AS 아이디
  FROM USER_T
 WHERE USER_NO NOT IN(SELECT USER_NO
                        FROM BUY_T);

-- 8. 카테고리별 구매횟수를 조회하시오.
-- 카테고리  구매횟수
-- 전자      4
-- 신발      2
-- 잡화      2
-- 의류      2
SELECT P.PROD_CATEGORY AS 카테고리
     , COUNT(B.BUY_NO) AS 구매횟수
  FROM PRODUCT_T P INNER JOIN BUY_T B
    ON P.PROD_CODE = B.PROD_CODE
    GROUP BY P.PROD_CATEGORY;

-- 9. 아이디별 구매횟수를 조회하시오.
-- 아이디  구매횟수
-- KHD     3
-- LHJ     2
-- KYM     1
-- KJD     1
-- PSH     3
SELECT USER_ID AS 아이디
     , COUNT(BUY_NO) AS 구매횟수
  FROM USER_T U INNER JOIN BUY_T B
    ON U.USER_NO = B.USER_NO
 --GROUP BY U.USER_ID;


-- 10. 아이디별 구매횟수를 조회하시오. 구매 이력이 없는 경우 구매횟수는 0으로 조회하고 아이디의 오름차순으로 조회하시오.
-- 아이디  고객명  구매횟수                      --외부조인문제
-- KHD     강호동  3
-- KJD     김제동  1
-- KKJ     김국진  0
-- KYM     김용만  1
-- LHJ     이휘재  2
-- LKK     이경규  0
-- NHS     남희석  0
-- PSH     박수홍  3
-- SDY     신동엽  0
-- YJS     유재석  0
SELECT U.USER_ID AS 아이디  
     , U.USER_NAME AS 고객명
     , COUNT(B.BUY_NO) AS 구매횟수
  FROM USER_T U LEFT OUTER JOIN BUY_T B
    ON U.USER_NO = B.USER_NO
 GROUP BY U.USER_ID, U.USER_NAME
 ORDER BY U.USER_ID;            

-- 11. 모든 제품의 제품명과 판매횟수를 조회하시오. 판매 이력이 없는 제품은 0으로 조회하시오.
-- 제품명  판매횟수
-- 메모리  1개
-- 운동화  2개
-- 청바지  2개
-- 노트북  1개
-- 모니터  2개
-- 책      1개
-- 벨트    0개
SELECT P.PROD_NAME AS 제품명     
     , CONCAT(COUNT(B.BUY_NO), '개') AS 판매횟수
  FROM PRODUCT_T P LEFT OUTER JOIN BUY_T B
    ON P.PROD_CODE = B.PROD_CODE
 GROUP BY P.PROD_CODE, P.PROD_NAME;          --PROD_CODE를 하지않으면 NAME만 같으면 그룹된다.
                                             --GROUP BY와 SELECT는 항상 같지 않아도 된다.(SELECT는 선택 가능)

-- 12. 카테고리가 '전자'인 제품을 구매한 고객의 구매내역을 조회하시오.
-- 고객명  제품명  구매액
-- 강호동  노트북  1000
-- 김용만  모니터  200
-- 박수홍  모니터  1000
-- 박수홍  메모리  800
SELECT U.USER_NAME AS 고객명
     , P.PROD_NAME AS 제품명  
     , P.PROD_PRICE * B.BUY_AMOUNT AS 구매액
  FROM USER_T U INNER JOIN BUY_T B
    ON U.USER_NO = B.USER_NO INNER JOIN PRODUCT_T P
    ON P.PROD_CODE = B.PROD_CODE;
 WHERE P.PROD_CATEGORY = '전자';

-- 13. 제품을 구매한 이력이 있는 고객의 아이디, 고객명, 구매횟수, 총구매액을 조회하시오.
-- 아이디  고객명  구매횟수  총구매액
-- PSH     박수홍  3         1860
-- KYM     김용만  1         200
-- KJD     김제동  1         75
-- LHJ     이휘재  2         80
-- KHD     강호동  3         1210
SELECT U.USER_ID AS 아이디
     , U.USER_NAME AS 고객명
     , COUNT(B.BUY_NO) 구매횟수
     , SUM(P.PROD_PRICE * B.BUY_AMOUNT) AS 총구매액
  FROM USER_T U INNER JOIN BUY_T B
    ON U.USER_NO = B.USER_NO INNER JOIN PRODUCT_T P
    ON P.PROD_CODE = B.PROD_CODE
 GROUP BY U.USER_ID, U.USER_NAME;

-- 14. 구매횟수가 2회 이상인 고객명과 구매횟수를 조회하시오.
-- 고객명  구매횟수
-- 이휘재  2
-- 박수홍  3
-- 강호동  3
SELECT U.USER_NAME AS 고객명
     , COUNT(B.BUY_NO) AS 구매횟수
  FROM USER_T U INNER JOIN BUY_T B
    ON U.USER_NO = B.USER_NO
 GROUP BY U.USER_NO, U.USER_NAME                  --번화이름이 같아야 같은사람이다.
HAVING COUNT(B.BUY_NO) > = 2Z;

-- 15. 어떤 고객이 어떤 제품을 구매했는지 조회하시오. 구매 이력이 없는 고객도 조회하고 아이디로 오름차순 정렬하시오.
-- 고객명   구매제품
-- 강호동   운동화
-- 강호동   청바지
-- 강호동   노트북
-- 김제동   책
-- 김국진   NULL
-- 김용만   모니터
-- 이휘재   청바지
-- 이휘재   책
-- 이경규   NULL
-- 남희석   NULL
-- 박수홍   모니터
-- 박수홍   운동화
-- 박수홍   메모리
-- 신동엽   NULL
-- 유재석   NULL
SELECT U.USER_NAME AS 고객명
     , P.PROD_NAME AS 구매제품
  FROM USER_T U LEFT OUTER JOIN BUY_T B
    ON U.USER_NO = B.USER_NO LEFT OUTER JOIN PRODUCT_T P
    ON P.PROD_CODE = B.PROD_CODE 
 ORDER BY U.USER_ID ASC;


-- 16. 제품 테이블에서 제품명이 '책'인 제품의 카테고리를 '서적'으로 수정하시오.
UPDATE PRODUCT_T
   SET PROD_CATEGORY = '서적'
 WHERE PROD_NAME = '책';
COMMIT;

-- 17. 연락처1이 '011'인 사용자의 연락처1을 모두 '010'으로 수정하시오.
UPDATE USER_T
   SET USER_MOBILE1 = '010'
 WHERE USER_MOBILE1 = '011';
COMMIT;
-- 18. 구매번호가 가장 큰 구매내역을 삭제하시오.
-- 아래 쿼리는 비추천.
-- 시퀀스를 사용하였으나, INSERT 자체가 실패한 경우 가장 큰 구매번호와 CURRVAL값은 다르다.
DELETE 
  FROM BUY_T
 WHERE BUY_NO = (SELECT MAX(BUY_NO)
                   FROM BUY_T);
COMMIT;

SELECT BUY_SEQ.CURRVAL
  FROM DUAL;
  

-- 19. 제품코드가 1인 제품을 삭제하시오. 삭제 이후 제품번호가 1인 제품의 구매내역이 어떻게 변하는지 조회하시오.
-- 삭제 전 구매내역
SELECT *FROM BUY_T;
--삭제
SELECT * FROM PRODUCT_T WHERE PROD_CODE = 1;
COMMIT;
-- 삭제 후 구매내역
SELECT * FROM BUY_T;

-- 20. 사용자번호가 5인 사용자를 삭제하시오. 사용자번호가 5인 사용자의 구매 내역을 먼저 삭제한 뒤 진행하시오.
DELETE 
  FROM BUY_T
 WHERE USER_NO = 5;
 
DELETE                                        --롤백을하게되면 이전 커밋으로 돌아가게된다.SELECT * FROM PRODUCT_T WHERE PROD_CODE = 1;
                                              --COMMIT;
  FROM USER_T
 WHERE USER_NO = 5;
 
 COMMIT;