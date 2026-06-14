-- 문제: 12세 이하 여자환자 목록 출력하기
--
-- 사용 문법
-- IFNULL(컬럼, 값) : NULL인 경우 지정한 값으로 대체
-- ORDER BY 컬럼 DESC : 내림차순 정렬
-- ORDER BY 컬럼 ASC : 오름차순 정렬
--
-- 배운 점
-- IFNULL()을 사용하면 NULL 값을 원하는 문자열로 변경할 수 있다.
-- 여러 조건 정렬은 ORDER BY 컬럼1, 컬럼2 형태로 작성한다.
--
-- 느낀 점
-- 처음으로 IFNULL() 함수를 사용해 보았다.
-- NULL 데이터를 처리해야 할 때 유용하게 사용할 수 있을 것 같다.

SELECT PT_NAME,
       PT_NO,
       GEND_CD,
       AGE,
       IFNULL(TLNO, 'NONE') AS TLNO
FROM PATIENT
WHERE GEND_CD = 'W'
  AND AGE <= 12
ORDER BY AGE DESC, PT_NAME ASC;
