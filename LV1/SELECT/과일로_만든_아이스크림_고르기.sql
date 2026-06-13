-- 문제: 과일로 만든 아이스크림 고르기
--
-- 사용 문법
-- JOIN
-- ON
-- 별칭(Alias)
-- WHERE
-- ORDER BY DESC
--
-- 풀이 포인트
-- FIRST_HALF 테이블과 ICECREAM_INFO 테이블을 FLAVOR 기준으로 JOIN한다.
-- F.FLAVOR = I.FLAVOR 를 ON 조건으로 사용한다.
-- 총주문량이 3000보다 큰 아이스크림만 조회한다.
-- 주 성분이 fruit_based인 아이스크림만 조회한다.
-- 총주문량이 큰 순서대로 정렬한다.
--
-- 실수한 점
-- FLAVOR 컬럼은 두 테이블에 모두 있으므로 SELECT FLAVOR만 쓰면 ambiguous 오류가 난다.
-- F.FLAVOR처럼 별칭을 붙여 어느 테이블의 컬럼인지 명확히 해야 한다.
--
-- 배운 점
-- JOIN은 두 테이블을 연결할 때 사용한다.
-- ON은 두 테이블을 어떤 컬럼 기준으로 연결할지 정하는 조건이다.
-- 별칭을 사용하면 테이블명을 짧게 줄여서 쓸 수 있다.

SELECT F.FLAVOR
FROM FIRST_HALF F
JOIN ICECREAM_INFO I
ON F.FLAVOR = I.FLAVOR
WHERE F.TOTAL_ORDER > 3000
AND I.INGREDIENT_TYPE = 'fruit_based'
ORDER BY F.TOTAL_ORDER DESC;
