
select score, dense_rank() over (order by score desc) as `rank`
from Scores;
or
select a.score, count(b.score) as rank
from scores a
join
(
select distinct score
from scores
) b
on a.score <= b.score
group by a.id, a.score
order by a.score desc
