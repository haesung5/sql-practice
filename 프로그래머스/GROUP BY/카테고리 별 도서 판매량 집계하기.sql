-- https://school.programmers.co.kr/learn/courses/30/lessons/144855

-- 2022년 1월의 카테고리 별 도서 판매량을 합산하고, 카테고리(CATEGORY), 총 판매량(TOTAL_SALES) 리스트를 출력하는 SQL문을 작성해주세요.
-- 결과는 카테고리명을 기준으로 오름차순 정렬해주세요.

-- book_id를 기준으로 판매권수를 먼저 구한 후 book_id에 맞는 category 매칭

select b.category, sum(s.sales) as total_sales
from book_sales as s
join book as b
where date_format(s.sales_date, '%Y-%m') = '2022-01' and s.book_id = b.book_id
group by b.category
order by b.category
