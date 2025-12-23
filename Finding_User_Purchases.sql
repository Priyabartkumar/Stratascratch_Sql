Identify returning active users by finding users who made a second purchase within 1 to 7 days after their first purchase. Ignore same-day purchases. Output a list of these user_ids.


  
select distinct t1.user_id, min(t1.created_at) as first_purchase
from amazon_transactions t1 join 
amazon_transactions t2
on t1.user_id=t2.user_id
and t1.id<>t2.id
where abs(datediff(first_purchase,t2.created_at))Between 1 and 7
group by t1.user_id
order by t1.user_id;
