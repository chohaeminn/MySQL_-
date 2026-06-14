-- 문제: 흉부외과 또는 일반외과 의사 목록 출력하기
--
-- 사용 문법
-- OR : 여러 조건 중 하나라도 만족하는 데이터 조회
-- ORDER BY 컬럼 DESC : 내림차순 정렬
-- ORDER BY 컬럼 ASC : 오름차순 정렬
--
-- 배운 점
-- OR 연산자를 사용하여 여러 조건을 동시에 검색할 수 있다.
-- ORDER BY에 여러 컬럼을 작성하면 우선순위를 두고 정렬할 수 있다.
--
-- 느낀 점
-- 이번 문제는 비교적 쉬웠지만 정렬 조건을 꼼꼼히 확인하는 것이 중요했다.
-- 특히 고용일자가 같을 경우 이름 기준으로 다시 정렬하는 부분을 놓치지 않아야 한다.

SELECT DR_NAME,
       DR_ID,
       MCDP_CD,
       HIRE_YMD
FROM DOCTOR
WHERE MCDP_CD = 'CS'
   OR MCDP_CD = 'GS'
ORDER BY HIRE_YMD DESC, DR_NAME ASC;
