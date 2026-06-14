-- 문제: 2021년에 출판된 인문 카테고리 도서 조회
--
-- 사용 문법
-- YEAR(날짜컬럼) : 날짜에서 연도 추출
-- ORDER BY 컬럼 ASC : 오름차순 정렬
--
-- 실수한 점
-- SELECT (*) 형태로 작성하여 문법 오류가 발생했다.
-- 필요한 컬럼은 SELECT BOOK_ID, PUBLISHED_DATE 처럼 직접 작성해야 한다.
-- 또한 문제 조건은 2021년인데 2020년으로 조건을 잘못 작성했다.
--
-- 느낀 점
-- SQL 문법도 중요하지만 문제의 조건을 정확히 확인하는 습관이 중요하다.
-- DATE 타입은 YEAR() 함수를 사용하면 연도 조건을 쉽게 처리할 수 있다.

SELECT BOOK_ID, PUBLISHED_DATE
FROM BOOK
WHERE CATEGORY = '인문'
  AND YEAR(PUBLISHED_DATE) = 2021
ORDER BY PUBLISHED_DATE ASC;
