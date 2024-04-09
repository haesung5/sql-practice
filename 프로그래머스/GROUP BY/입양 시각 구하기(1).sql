-- https://school.programmers.co.kr/learn/courses/30/lessons/59412

SELECT hour(datetime) as HOUR, count(datetime) as COUNT
from animal_outs
where hour(datetime) > 8 and hour(datetime) < 20
group by hour(datetime)
order by hour(datetime) asc;
