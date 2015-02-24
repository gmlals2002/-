SELECT * FROM NOTICES;
--게시글 목록 조회
SELECT * FROM NOTICES ORDER BY REGDATE DESC;

--게시글 조회
SELECT * FROM NOTICES WHERE CODE = "+_code+";

--현재 공지사항에서 가장 큰 CODE값을 얻어오시오.
SELECT NVL(TO_NUMBER(MAX(CODE)), 0)+1 FROM NOTICES;

--20개씩 나눈 레코드를 얻어오는 쿼리 작성
--1페이지,2페이지
SELECT * FROM NOTICES ORDER BY REGDATE DESC;

WHERE ROWNUM BETWEEN 1 AND 20;
SELECT * FROM(SELECT * FROM NOTICES ORDER BY REGDATE DESC)WHERE ROWNUM BETWEEN 1 AND 20;
INSERT INTO NOTICES(CODE, TITLE, WRITER, CONTENT, REGDATE, HIT) VALUES('146','ABC','HYO','HEHE',SYSDATE,0);

SELECT * FROM(SELECT ROWNUM NUM, NOTICES.* FROM (SELECT * FROM NOTICES N.ORDER BY REGDATE DESC))WHERE NUM BETWEEN 2 AND 4;


SELECT * FROM(SELECT ROWNUM NUM, N.* FROM (SELECT * FROM NOTICES WHERE TITLE LIKE ? ORDER BY REGDATE DESC) N) WHERE NUM BETWEEN ? AND ?;



SELECT N.* FROM
(
SELECT (ROW_NUMBER() OVER (ORDER BY REGDATE DESC))
NUM, NOTICES.* FROM NOTICES) N
WHERE NUM BETWEEN 11 AND 20;



INSERT INTO NOTICES(CODE, TITLE, WRITER, CONTENT, REGDATE, HIT) VALUES('77','캬캬캬캬','키키키키','HEHE', ,'0);




SELECT CAST(CODE AS INT) +1 FROM NoticeFiles;


SELECT NVL



SELECT NVL(MAX(TO_NUMBER(CODE)),0)+1 FROM NOTICES;
SELECT ISNULL(MAX(CAST(CODE AS INT)),0)+1 FROM NoticeFile;
SELECT MAX(TO_NUMBER(CODE)),0)+1 FROM NOTICES;


SELECT TOP 1*FROM NOTICES WHERE REGDATE >(SELECT REGDATE FROM NOTICES WHERE CODE='242')
ORDER BY REGDATE ASC; 



