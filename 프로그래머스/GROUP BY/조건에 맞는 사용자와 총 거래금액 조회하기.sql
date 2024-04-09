-- https://school.programmers.co.kr/learn/courses/30/lessons/164668

-- 중고거래 총금액이 70만원 이상
-- 사람의 회원ID, 닉네임, 총거래금액 조회
-- 결과는 총거래금액을 기준으로 오름차순 정렬
-- GROUP BY - SELECT - ORDER BY 순으로 작업이 이루어진다.
-- WHERE 로 조건 처리 후, GROUP BY 로 그룹화 한다. 그 후 HAVING 으로 다시 한번 조건처리하고자 할 때 사용한다.

SELECT u.USER_ID, u.NICKNAME, SUM(b.PRICE) AS TOTAL_SALES
FROM USED_GOODS_BOARD AS b
INNER JOIN USED_GOODS_USER AS u ON b.WRITER_ID = u.USER_ID
WHERE b.STATUS = 'DONE'
GROUP BY u.USER_ID
HAVING TOTAL_SALES >= 700000
ORDER BY TOTAL_SALES