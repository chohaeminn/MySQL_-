-- 문제 : 어린 동물 찾기

-- 사용 문법
-- SELECT : 원하는 컬럼 조회
-- FROM : 조회할 테이블 지정
-- WHERE : 조건에 맞는 데이터 조회
-- != : 같지 않음(Not Equal)
-- ORDER BY : 결과 정렬

-- 배운 점
-- SQL에서 특정 값이 아닌 데이터를 조회할 때 != 연산자를 사용할 수 있다.
-- INTAKE_CONDITION이 'Aged'가 아닌 동물만 조회하면 어린 동물을 찾을 수 있다.
-- WHERE 절에서 조건을 반대로 설정하여 원하는 데이터를 필터링할 수 있다.
-- ORDER BY ANIMAL_ID를 사용하여 동물 ID 기준 오름차순 정렬이 가능하다.

SELECT ANIMAL_ID,
       NAME
FROM ANIMAL_INS
WHERE INTAKE_CONDITION != 'Aged'
ORDER BY ANIMAL_ID;
