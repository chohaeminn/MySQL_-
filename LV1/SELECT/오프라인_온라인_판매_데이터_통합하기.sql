-- 문제 : 오프라인/온라인 판매 데이터 통합하기

-- 사용 문법
-- UNION ALL : 두 SELECT 결과를 합쳐서 출력
-- NULL AS 컬럼명 : 존재하지 않는 컬럼을 NULL 값으로 표시
-- WHERE 날짜 >= 시작일 AND 날짜 < 다음달 시작일 : 특정 월 데이터 조회
-- ORDER BY : 결과 정렬

-- 배운 점
-- 온라인 판매 테이블과 오프라인 판매 테이블은 컬럼 구조가 다르다.
-- OFFLINE_SALE 테이블에는 USER_ID가 없기 때문에 NULL AS USER_ID로 컬럼을 맞춰야 한다.
-- UNION ALL을 사용할 때는 두 SELECT문의 컬럼 개수와 순서가 같아야 한다.
-- 2022년 3월 데이터만 조회하기 위해 날짜 조건을 사용한다.

SELECT SALES_DATE,
       PRODUCT_ID,
       USER_ID,
       SALES_AMOUNT
FROM ONLINE_SALE
WHERE SALES_DATE >= '2022-03-01'
  AND SALES_DATE < '2022-04-01'

UNION ALL

SELECT SALES_DATE,
       PRODUCT_ID,
       NULL AS USER_ID,
       SALES_AMOUNT
FROM OFFLINE_SALE
WHERE SALES_DATE >= '2022-03-01'
  AND SALES_DATE < '2022-04-01'

ORDER BY SALES_DATE ASC,
         PRODUCT_ID ASC,
         USER_ID ASC;
