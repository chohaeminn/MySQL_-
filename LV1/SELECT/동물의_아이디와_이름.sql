-- 문제 : 동물의 아이디와 이름

-- 사용 문법
-- SELECT : 원하는 컬럼 조회
-- FROM : 조회할 테이블 지정
-- ORDER BY : 결과 정렬

-- 배운 점
-- SELECT를 사용하여 특정 컬럼만 조회할 수 있다.
-- ANIMAL_ID와 NAME 컬럼을 선택하여 출력할 수 있다.
-- ORDER BY를 사용하면 원하는 기준으로 정렬할 수 있다.
-- 기본 오름차순 정렬은 ASC를 생략해도 된다.

SELECT ANIMAL_ID,
       NAME
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;
