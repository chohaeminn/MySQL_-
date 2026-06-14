-- 문제: 3월에 태어난 여성 회원 목록 출력하기
--
-- 사용 문법
-- MONTH(날짜컬럼) : 날짜에서 월 추출
-- IS NOT NULL : NULL이 아닌 데이터만 조회
-- ORDER BY 컬럼 ASC : 오름차순 정렬
--
-- 배운 점
-- MONTH() 함수를 사용하면 날짜 데이터에서 월만 추출할 수 있다.
-- NULL 값을 제외할 때는 IS NOT NULL을 사용한다.
--
-- 느낀 점
-- 날짜 조건과 NULL 제외 조건을 함께 사용하는 방법을 익혔다.
-- 특히 NULL은 = NULL이 아니라 IS NULL / IS NOT NULL로 비교해야 한다.

SELECT MEMBER_ID,
       MEMBER_NAME,
       GENDER,
       DATE_OF_BIRTH
FROM MEMBER_PROFILE
WHERE GENDER = 'W'
  AND MONTH(DATE_OF_BIRTH) = 3
  AND TLNO IS NOT NULL
ORDER BY MEMBER_ID ASC;
