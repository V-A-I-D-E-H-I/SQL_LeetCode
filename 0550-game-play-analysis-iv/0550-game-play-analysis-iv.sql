# Write your MySQL query statement below

select round(count(x.player_id)/(select(count(distinct player_id)) from Activity),2) as fraction
from(
select player_id, min(event_date) as event_date
from Activity
group by player_id
) as x
left join Activity as a
on x.player_id=a.player_id
where Datediff(a.event_date,x.event_date)=1
