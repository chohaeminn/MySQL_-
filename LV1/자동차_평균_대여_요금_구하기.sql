-- 문제: 자동차 평균 대여 요금 구하기
--
-- 사용 문법
-- AVG(컬럼명) : 평균 계산
-- ROUND(값, 0) : 소수 첫째 자리에서 반올림
--
-- 실수한 점
-- SQL 문장은 SELECT → FROM → WHERE 순서로 작성한다.
-- 세미콜론(;)은 SQL 문장이 끝나는 마지막에만 적는다.
-- SELECT 뒤에 ;를 적으면 SQL이 거기서 종료되어 오류가 발생한다.
--
-- 느낀 점
-- ROUND(AVG(DAILY_FEE), 0) 형태를 기억하자.

SELECT ROUND(AVG(DAILY_FEE), 0) AS AVERAGE_FEE
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = 'SUV';
