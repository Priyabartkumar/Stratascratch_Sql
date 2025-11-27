Easy     ID 9913

Find order details made by Jill and Eva.
Consider the Jill and Eva as first names of customers.
Output the order date, details and cost along with the first name.
Order records based on the customer id in ascending order.

 
select first_name,order_date,order_details, total_order_cost
from customers cs join orders o on cs.id = o.cust_id
where first_name='Jill' or first_name = 'Eva'
order by o.cust_id;
