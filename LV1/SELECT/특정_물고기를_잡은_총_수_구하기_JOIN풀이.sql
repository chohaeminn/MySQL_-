-- 문제: FISH_INFO와 FISH_NAME_INFO를 JOIN하여 BASS와 SNAPPER의 총 마릿수 구하기
--
-- 사용 문법
-- JOIN 테이블 ON 조건 : 두 테이블을 공통 컬럼(FISH_TYPE)을 기준으로 결합
-- WHERE 컬럼 IN ('값1', '값2') : 지정한 목록에 포함되는 문자열 데이터를 필터링
-- COUNT(*) : 조건에 맞는 전체 행의 개수를 집계
--
-- 배운 점
-- 1. 테이블을 조인할 때는 두 테이블을 연결할 공통 컬럼명(FISH_TYPE)이 매칭 조건(ON)에 정확히 들어갔는지 확인해야 한다.
-- 2. SQL 조건절에서 문자열 상수를 비교할 때는 홑따옴표('')를 빠뜨리면 문법 에러가 발생하므로 문자의 양 끝을 항상 잘 감싸주어야 한다.
-- 3. 여러 개의 문자열 조건을 비교할 때 OR를 연달아 쓰는 것보다 IN (...) 문법을 쓰면 코드가 훨씬 깔끔해진다.
--
-- 느낀 점
-- 앞서 숫자로 풀었던 방식을 조인(JOIN)과 문자열 필터링을 사용하는 정석적인 방법으로 직접 구현해 보니 확실히 쿼리가 더 안전하고 프로페셔널해 보였다. 오타와 컬럼명을 꼼꼼하게 매칭하는 디테일의 중요성을 다시 한번 상기할 수 있었다.

SELECT COUNT(*) AS FISH_COUNT
FROM FISH_INFO AS FISH
JOIN FISH_NAME_INFO AS INFO ON FISH.FISH_TYPE = INFO.FISH_TYPE
WHERE INFO.FISH_NAME IN ('BASS', 'SNAPPER');
