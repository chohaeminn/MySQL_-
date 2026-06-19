-- 문제: Python 스킬을 가진 개발자 정보 조회하기
--
-- 사용 문법
-- WHERE 조건식 OR 조건식 : 여러 조건 중 하나라도 만족하는 데이터 필터링
-- ORDER BY 컬럼 ASC : 오름차순 정렬
--
-- 배운 점
-- 1. 에러 메시지(Syntax Error)를 보면 어느 위치에서 문법이 어긋났는지(따옴표 누락 등) 유추할 수 있다.
-- 2. 조건절(WHERE)을 작성할 때 문자열 상수의 열고 닫는 따옴표('')가 짝이 맞는지 항상 확인해야 한다.
-- 3. 문제를 꼼꼼히 읽고 SELECT해야 하는 컬럼(LAST_NAME 등)이 누락되지 않았는지 체크하는 습관이 중요하다.
--
-- 느낀 점
-- 단순한 오타 하나 때문에 전체 쿼리가 실패하는 것을 보며, SQL을 작성할 때는 대소문자나 문장 부호 하나에도 꼼꼼해야 함을 다시금 깨달았다. 오타를 찾아내고 수정해서 쿼리가 정상 작동할 때 실력이 늘어나는 기분이 든다.

SELECT ID, EMAIL, FIRST_NAME, LAST_NAME
FROM DEVELOPER_INFOS
WHERE SKILL_1 = 'Python' 
   OR SKILL_2 = 'Python' 
   OR SKILL_3 = 'Python'
ORDER BY ID ASC;
