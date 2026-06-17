-- 문제명
-- 역순 정렬하기

-- 사용 문법
-- SELECT
-- FROM
-- ORDER BY
-- DESC

-- 풀이 포인트
-- NAME과 DATETIME 컬럼만 조회한다.
-- ANIMAL_ID를 기준으로 내림차순 정렬한다.
-- DESC는 내림차순 정렬을 의미한다.

-- 실수한 점
-- 문제 제목이 "역순 정렬하기"라서 DATETIME을 역순 정렬할 것처럼 보일 수 있다.
-- 하지만 문제에서 ANIMAL_ID 역순으로 출력하라고 했으므로
-- ORDER BY ANIMAL_ID DESC를 사용해야 한다.

-- 배운 점
-- SELECT 컬럼명1, 컬럼명2 로 필요한 컬럼만 조회할 수 있다.
-- ORDER BY 컬럼명 DESC는 내림차순 정렬이다.
-- ORDER BY 컬럼명 ASC는 오름차순이며 ASC는 생략 가능하다.
-- SELECT * 는 모든 컬럼을 조회하지만 필요한 컬럼만 조회하는 것이 더 효율적이다.

SELECT NAME, DATETIME
FROM ANIMAL_INS
ORDER BY ANIMAL_ID DESC;
