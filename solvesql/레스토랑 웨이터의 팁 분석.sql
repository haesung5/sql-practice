-- https://solvesql.com/problems/tip-analysis/

select day, time, ROUND(AVG(tip),2) AS avg_tip, ROUND(AVG(size),2) AS avg_size from tips group by day, time
