# Write your MySQL query statement below
select x.activity_date as day, count(distinct(x.user_id)) as active_users
from (
  select *
  from Activity
  where activity_date between '2019-06-28' and '2019-07-27'
) as x
group by x.activity_date