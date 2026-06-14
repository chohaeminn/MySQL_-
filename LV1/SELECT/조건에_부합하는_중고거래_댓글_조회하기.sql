-- 문제: 조건에 부합하는 중고거래 댓글 조회하기
--
-- 사용 문법
-- JOIN : 두 테이블을 공통 컬럼으로 연결
-- ON : JOIN 조건 지정
-- ORDER BY 컬럼 ASC : 오름차순 정렬
--
-- 배운 점
-- JOIN 시 두 테이블에 같은 컬럼명이 존재하면
-- 테이블 별칭(예: B.CREATED_DATE, R.CREATED_DATE)을 사용해야 한다.
--
-- 실수한 점
-- WHERE절에서 CREATED_DATE를 테이블명 없이 작성하여
-- "Column 'CREATED_DATE' is ambiguous" 오류가 발생했다.
-- 또한 댓글 작성일을 출력해야 하는데 게시글 작성일을 출력하려고 했다.
--
-- 느낀 점
-- JOIN 문제에서는 컬럼명이 중복되는지 먼저 확인해야 한다.
-- 어떤 테이블의 데이터를 조회하는지 명확하게 작성하는 습관이 중요하다.

SELECT B.TITLE,
       B.BOARD_ID,
       R.REPLY_ID,
       R.WRITER_ID,
       R.CONTENTS,
       R.CREATED_DATE
FROM USED_GOODS_BOARD B
JOIN USED_GOODS_REPLY R
ON B.BOARD_ID = R.BOARD_ID
WHERE B.CREATED_DATE LIKE '2022-10%'
ORDER BY R.CREATED_DATE ASC, B.TITLE ASC;
