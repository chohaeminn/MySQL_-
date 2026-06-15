-- 문제 : 강원도에 위치한 생산공장 목록 출력하기

-- 사용 문법
-- LIKE : 특정 문자열 패턴 검색
-- ORDER BY : 정렬
-- ASC : 오름차순 정렬

-- 배운 점
-- 주소가 특정 지역으로 시작하는지 확인할 때 LIKE를 사용할 수 있다.
-- '%'는 와일드카드로 뒤에 어떤 문자열이 와도 허용한다.
-- ORDER BY를 사용하여 원하는 기준으로 결과를 정렬할 수 있다.

SELECT FACTORY_ID,
       FACTORY_NAME,
       ADDRESS
FROM FOOD_FACTORY
WHERE ADDRESS LIKE '강원도%'
ORDER BY FACTORY_ID ASC;
