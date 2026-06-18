-- 문제 : 상위 n개 레코드

-- 사용 문법
-- SELECT : 원하는 컬럼 조회
-- FROM : 조회할 테이블 지정
-- ORDER BY : 정렬 기준 지정
-- LIMIT : 상위 N개 행 조회

-- 배운 점
-- 가장 먼저 들어온 동물을 찾기 위해 DATETIME 기준 오름차순 정렬을 사용한다.
-- LIMIT 1을 사용하면 가장 위의 한 행만 조회할 수 있다.
-- ORDER BY와 LIMIT를 함께 사용하면 최댓값, 최솟값 문제를 쉽게 해결할 수 있다.

SELECT NAME
FROM ANIMAL_INS
ORDER BY DATETIME ASC
LIMIT 1;
