-- 문제명
-- 모든 레코드 조회하기

-- 사용 문법
-- SELECT
-- FROM
-- ORDER BY

-- 풀이 포인트
-- ANIMAL_INS 테이블의 모든 컬럼을 조회한다.
-- ANIMAL_ID 기준으로 오름차순 정렬한다.

-- 실수한 점
-- SELECT * 만 사용하면 데이터가 우연히 정렬되어 보일 수 있다.
-- 문제에서 ANIMAL_ID순으로 조회하라고 했으므로
-- ORDER BY ANIMAL_ID를 명시해야 한다.

-- 배운 점
-- SELECT * 는 모든 컬럼을 조회한다.
-- ORDER BY 컬럼명은 특정 컬럼 기준으로 정렬한다.
-- ASC는 오름차순이며 생략 가능하다.
-- DESC는 내림차순이다.

SELECT *
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;
