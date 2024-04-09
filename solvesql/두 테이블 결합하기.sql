-- https://solvesql.com/problems/join/

-- records table과 events table에서 같은 id의 데이터 중
-- events table의 sport colum이 Golf인 data만 출력

select
  records.athlete_id
from
  records,
  events
where
  records.event_id = events.id
  and events.sport = 'Golf'
group by
  records.athlete_id
