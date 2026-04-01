Q) Find the total cost of each customer's orders. Output customer's id, first name, and the total order cost. Order records by customer's first name alphabetically.

select orders.cust_id,customers.first_name, sum(total_order_cost) from orders
 join customers on  customers.id = orders.cust_id
group by customers.id,
         customers.first_name
order by customers.first_name asc;
