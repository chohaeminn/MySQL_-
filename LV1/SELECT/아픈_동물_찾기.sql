-- 문제 : 아픈 동물 찾기

-- 사용 문법
-- SELECT : 원하는 컬럼 조회
-- FROM : 조회할 테이블 지정
-- WHERE : 조건에 맞는 데이터 조회
-- ORDER BY : 결과 정렬

-- 배운 점
-- 특정 조건의 데이터를 찾을 때 WHERE를 사용한다.
-- INTAKE_CONDITION이 'Sick'인 동물만 조회할 수 있다.
-- 여러 컬럼을 조회할 때는 SELECT 뒤에 쉼표로 구분하여 작성한다.
-- ORDER BY ANIMAL_ID를 사용하여 동물 ID 기준 오름차순 정렬이 가능하다.

SELECT ANIMAL_ID,
       NAME
FROM ANIMAL_INS
WHERE INTAKE_CONDITION = 'Sick'
ORDER BY ANIMAL_ID;
