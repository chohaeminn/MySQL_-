-- 문제 : 서울에 위치한 식당 목록 출력하기

-- 사용 문법
-- JOIN : 두 테이블을 공통 컬럼 기준으로 연결
-- AVG() : 평균값 계산
-- ROUND(값, 자리수) : 지정한 자리수까지 반올림
-- GROUP BY : 그룹별 집계
-- LIKE : 특정 문자열 패턴 검색
-- ORDER BY DESC : 내림차순 정렬

-- 배운 점
-- 리뷰 점수 평균처럼 집계 함수를 사용할 때는 GROUP BY가 필요하다.
-- ROUND(AVG(컬럼), 2)를 사용하면 평균값을 소수점 둘째 자리까지 반올림할 수 있다.
-- 평균점수 기준으로 먼저 정렬하고, 평균점수가 같으면 즐겨찾기수 기준으로 다시 정렬할 수 있다.

SELECT I.REST_ID,
       I.REST_NAME,
       I.FOOD_TYPE,
       I.FAVORITES,
       I.ADDRESS,
       ROUND(AVG(R.REVIEW_SCORE), 2) AS SCORE
FROM REST_INFO I
JOIN REST_REVIEW R
ON I.REST_ID = R.REST_ID
WHERE I.ADDRESS LIKE '서울%'
GROUP BY I.REST_ID,
         I.REST_NAME,
         I.FOOD_TYPE,
         I.FAVORITES,
         I.ADDRESS
ORDER BY SCORE DESC,
         I.FAVORITES DESC;
