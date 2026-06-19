-- 문제: 대장균 개체의 ID와 자식의 수(CHILD_COUNT) 구하기
--
-- 사용 문법
-- Self LEFT JOIN : 부모(PARENT)와 자식(CHILD) 테이블로 나누어 자기 자신을 매칭
-- GROUP BY : 부모의 ID를 기준으로 그룹화
-- COUNT(컬럼명) : 지정된 컬럼에 NULL 값이 있으면 카운트에서 제외하는 특성 활용
--
-- 배운 점
-- 1. GROUP BY로 묶인 기준 컬럼(PARENT.ID)은 SELECT 절에서 COUNT()를 씌우지 않고 그대로 호출해야 해당 그룹의 고유 번호(ID)를 볼 수 있다.
-- 2. COUNT(*)은 행의 존재 자체를 세기 때문에 LEFT JOIN으로 인해 우측 테이블이 NULL인 행도 1로 카운트한다. 반면 COUNT(CHILD.ID)처럼 우측 컬럼을 지정하면 NULL을 제외하므로 '자식이 없으면 0'을 구현할 수 있다.
-- 3. SQL 문은 세미콜론(;)으로 하나의 쿼리가 끝나므로, 그 하단에 정렬 문법 등이 중복으로 남아있지 않도록 깔끔하게 정리해야 한다.
--
-- 느낀 점
-- LEFT JOIN까지는 완벽하게 구조를 설계했지만, COUNT(*)과 COUNT(컬럼명)의 미묘한 차이 때문에 결과가 완전히 달라질 수 있음을 깨달았다. 집계 함수가 NULL을 처리하는 방식을 정확히 이해하는 것이 SQL 초보를 탈출하는 핵심 열쇠라는 생각이 든다.

SELECT PARENT.ID, 
       COUNT(CHILD.ID) AS CHILD_COUNT
FROM ECOLI_DATA PARENT
LEFT JOIN ECOLI_DATA CHILD ON CHILD.PARENT_ID = PARENT.ID
GROUP BY PARENT.ID 
ORDER BY PARENT.ID ASC;
