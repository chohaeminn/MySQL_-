-- 문제: 상반기 아이스크림 총주문량
-- 사용 문법: ORDER BY, DESC, ASC
-- 실수한 점: 다중 정렬 시 쉼표(,) 필요
-- 배운 점: ORDER BY 컬럼1 DESC, 컬럼2 ASC

SELECT FLAVOR
FROM FIRST_HALF
ORDER BY TOTAL_ORDER DESC, SHIPMENT_ID ASC;
