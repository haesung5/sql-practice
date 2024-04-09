-- https://school.programmers.co.kr/learn/courses/30/lessons/59040

SELECT ANIMAL_TYPE, count(ANIMAL_TYPE) 
from ANIMAL_INS
where ANIMAL_TYPE = 'Cat' or ANIMAL_TYPE = 'Dog'
group by ANIMAL_TYPE
order by ANIMAL_TYPE asc;