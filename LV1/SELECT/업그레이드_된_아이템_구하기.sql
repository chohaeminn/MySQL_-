-- 문제: 업그레이드 된 아이템 구하기 (희귀도가 'RARE'인 아이템의 다음 업그레이드 아이템 목록 출력하기)
--
-- 사용 문법
-- JOIN : 두 테이블을 연결하여 데이터 결합
-- 서브쿼리 (Subquery) : 쿼리 안의 쿼리를 사용해 조건에 맞는 데이터 필터링 (IN 연산자 활용)
-- ORDER BY 컬럼 DESC : 내림차순 정렬
--
-- 배운 점
-- 1. 서브쿼리를 사용할 때 open한 소괄호 '('는 반드시 ')'로 닫아주어야 문법 에러가 나지 않는다.
-- 2. 메인 쿼리에서 테이블에 별칭(Alias)을 주었더라도, 서브쿼리 내부의 FROM절에서는 원본 테이블명(ITEM_INFO)을 정확히 명시해야 한다.
-- 3. 계층형 구조(부모-자식 관계)에서 자식 데이터를 조건에 맞게 필터링할 때 서브쿼리를 활용하면 복잡한 조인을 피하고 가독성을 높일 수 있다.
--
-- 느낀 점
-- 조건문과 서브쿼리의 괄호 매칭 같은 사소한 문법 실수가 에러를 유발할 수 있으므로, 쿼리가 길어질수록 괄호 닫기와 테이블명 지정에 더 주의를 기울여야겠다고 느꼈다. 
-- 에러 메시지를 보고 차근차근 괄호 위치와 테이블 별칭을 찾아내어 해결했을 때 뿌듯함을 느꼈다.

SELECT INFO.ITEM_ID, 
       INFO.ITEM_NAME, 
       INFO.RARITY
FROM ITEM_INFO AS INFO
JOIN ITEM_TREE AS TREE ON INFO.ITEM_ID = TREE.ITEM_ID

WHERE TREE.PARENT_ITEM_ID IN (
    SELECT ITEM_ID
    FROM ITEM_INFO 
    WHERE RARITY = 'RARE'
)

ORDER BY INFO.ITEM_ID DESC;
