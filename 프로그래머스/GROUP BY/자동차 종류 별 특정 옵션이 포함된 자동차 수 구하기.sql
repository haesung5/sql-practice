-- https://school.programmers.co.kr/learn/courses/30/lessons/151137

-- CAR_RENTAL_COMPANY_CAR 테이블에서 '통풍시트', '열선시트', '가죽시트' 중 하나 이상의 옵션이 포함된 자동차가 자동차 종류 별로 몇 대인지 출력하는 SQL문을 작성해주세요. 
-- 이때 자동차 수에 대한 컬럼명은 CARS로 지정하고, 결과는 자동차 종류를 기준으로 오름차순 정렬해주세요.

-- REGEXP 연산자는 LIKE보다 복잡한 패턴을 검색 할때 사용한다.
--복수개의 특정 문자를 포함하는 데이터 검색 (특정 문자열을 '|' 를 기준으로 나눈다)
-- SELECT [필드명] FROM [테이블명] WHERE [필드명] REGEXP '특정 문자열|특정 문자열2';

SELECT CAR_TYPE, COUNT(*) AS CARS
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS REGEXP '통풍시트|열선시트|가죽시트'
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE ASC

