-- 문제 : 재구매가 일어난 상품과 회원 리스트 구하기

-- 사용 문법
-- GROUP BY : 같은 회원 ID와 상품 ID를 하나의 그룹으로 묶음
-- COUNT(*) : 그룹별 데이터 개수 계산
-- HAVING : 그룹화된 결과에 조건 적용
-- ORDER BY : 결과 정렬
-- ASC : 오름차순 정렬
-- DESC : 내림차순 정렬

-- 배운 점
-- 재구매 여부는 같은 회원이 같은 상품을 몇 번 구매했는지 확인하면 된다.
-- USER_ID와 PRODUCT_ID를 기준으로 GROUP BY를 수행한다.
-- COUNT(*)를 이용해 구매 횟수를 계산한다.
-- HAVING COUNT(*) >= 2를 사용하여 2회 이상 구매한 경우만 조회할 수 있다.
-- WHERE는 그룹화 전 조건, HAVING은 그룹화 후 조건을 지정할 때 사용한다.

SELECT USER_ID,
       PRODUCT_ID
FROM ONLINE_SALE
GROUP BY USER_ID,
         PRODUCT_ID
HAVING COUNT(*) >= 2
ORDER BY USER_ID ASC,
         PRODUCT_ID DESC;
