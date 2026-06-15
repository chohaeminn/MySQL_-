# 강원도에 위치한 생산공장 목록 출력

## 문제
FOOD_FACTORY 테이블에서 강원도에 위치한 식품공장의 공장 ID, 공장 이름, 주소를 조회한다.
결과는 공장 ID 기준 오름차순으로 정렬한다.

## 풀이
- ADDRESS 컬럼이 '강원도'로 시작하는 데이터만 조회
- LIKE '강원도%' 조건 사용
- FACTORY_ID 기준 오름차순 정렬

## SQL
SELECT FACTORY_ID, FACTORY_NAME, ADDRESS
FROM FOOD_FACTORY
WHERE ADDRESS LIKE '강원도%'
ORDER BY FACTORY_ID ASC;
