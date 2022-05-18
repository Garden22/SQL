-- 테이블 생성
CREATE TABLE book (
    book_id NUMBER(5)
    ,title VARCHAR2(50)
    ,author VARCHAR2(10)
    ,pub_date DATE
);

-- 칼럼 추가 ADD(메소드)
ALTER TABLE book ADD(pubs VARCHAR2(50));

-- 컬럼 수정(자료형 변경)// MODIFY(메소드)
ALTER TABLE book MODIFY(title VARCHAR2(100));

-- 컬럼 수정(컬럼 이름 변경)// RENAME COLUMN ~ TO
ALTER TABLE book RENAME COLUMN title TO subject;

-- 칼럼 삭제 // DROP(메소드)
ALTER TABLE book DROP(author);

-- 테이블 이름 수정
RENAME book TO article;

-- 테이블 삭제
DROP TABLE article;


SELECT *
FROM book;