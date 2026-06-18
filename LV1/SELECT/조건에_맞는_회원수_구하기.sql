-- 문제 : 조건에 맞는 회원수 구하기

-- 사용 문법
-- COUNT(*) : 행 개수 계산
-- FROM : 조회할 테이블 지정
-- WHERE : 조건에 맞는 데이터 조회
-- BETWEEN A AND B : A 이상 B 이하
-- YEAR() : 날짜에서 연도 추출
-- AS : 별칭 지정

-- 배운 점
-- COUNT(*)를 사용하면 조건을 만족하는 행의 개수를 구할 수 있다.
-- BETWEEN 20 AND 29는 20세 이상 29세 이하를 의미한다.
-- YEAR(JOINED)를 사용하여 가입 연도를 추출할 수 있다.
-- AS USERS를 사용하여 결과 컬럼 이름을 USERS로 지정할 수 있다.
-- 여러 조건은 AND를 사용하여 동시에 만족하도록 작성한다.

SELECT COUNT(*) AS USERS
FROM USER_INFO
WHERE AGE BETWEEN 20 AND 29
  AND YEAR(JOINED) = 2021;
