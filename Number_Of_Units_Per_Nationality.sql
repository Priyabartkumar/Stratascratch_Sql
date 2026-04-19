ID 10156
Write a query that returns how many different apartment-type units (counted by distinct unit_id) are owned by people under 30, grouped by their nationality. 
Sort the results by the number of apartments in descending order.


queries:
select nationality, count(distinct unit_id) as apartment_count
from airbnb_hosts ah inner join airbnb_units au on ah.host_id = au.host_id
where au.unit_type = 'Apartment' and ah.age < 30
group by ah.nationality
order by apartment_count desc;
