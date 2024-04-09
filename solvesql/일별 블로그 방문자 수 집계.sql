-- https://solvesql.com/problems/blog-counter/

-- 일자별 user id로 방문자 수를 집계 
-- 단, 같은 일자에 중복된 데이터 개수는 distinct로 제거
-- where절로 일자 조건
-- group by로 일자 1줄만 나오게 출력

select
  event_date_kst as dt,
  count(DISTINCT user_pseudo_id) as users
from
  ga
WHERE
  dt BETWEEN '2021-08-02' AND '2021-08-09'
group by
  event_date_kst
