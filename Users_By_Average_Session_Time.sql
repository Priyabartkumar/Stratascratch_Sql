ID 10352
Q)Calculate each user's average session time, where a session is defined as the time difference between a page_load and a page_exit. Assume each user has only one session per day. 
If there are multiple page_load or page_exit events on the same day, use only the latest page_load and the earliest page_exit. 
Only consider sessions where the page_load occurs before the page_exit on the same day. Output the user_id and their average session time.

//CTE is created using With 
with loads as (
Select user_id, Date(timestamp) as day,
 max(timestamp) as load_time
 from facebook_web_log
 where action = 'page_load'
 group by user_id,Date(Timestamp)
),
exits as(
Select user_id , Date(timestamp) as day, min(timestamp) as
exit_time from facebook_web_log
where action='page_exit'
group by user_id, Date(timestamp)
),
session as (
select l.user_id,l.load_time, e.exit_time,timestampdiff(Second,l.load_time,e.exit_time) as session_duration 
from loads l join
exits e on l.user_id = e.user_id and l.day = e.day
where l.load_time < e.exit_time
)
select
user_id,
avg(session_duration) as average_session
from session
group by user_id
