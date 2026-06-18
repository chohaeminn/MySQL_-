-- 문제 : 여러 기준으로 정렬하기

-- 사용 문법
-- SELECT : 원하는 컬럼 조회
-- FROM : 조회할 테이블 지정
-- ORDER BY : 정렬 기준 지정
-- ASC : 오름차순 정렬 (기본값)
-- DESC : 내림차순 정렬

-- 배운 점
-- ORDER BY 뒤에 여러 컬럼을 작성하면 다중 정렬이 가능하다.
-- 첫 번째 기준(NAME)이 같을 경우 두 번째 기준(DATETIME)으로 정렬한다.
-- 이름은 오름차순(ASC)으로 정렬한다.
-- 이름이 같은 동물은 보호 시작일을 내림차순(DESC)으로 정렬하여 나중에 들어온 동물이 먼저 출력되도록 한다.

SELECT ANIMAL_ID,
       NAME,
       DATETIME
FROM ANIMAL_INS
ORDER BY NAME ASC,
         DATETIME DESC;
