Level:Medium
Question:
Find the percentage of shipable orders.
Consider an order is shipable if the customer's address is known.

queries:
select count(c.address)/count(o.id)*100 as percent_shipable
from orders o left join customers c on o.cust_id=c.id
