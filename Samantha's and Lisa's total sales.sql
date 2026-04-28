Level: Easy
Q)
  What is the total sales revenue of Samantha and Lisa?

  Easy
Solution:
select sum(sales_revenue) as total_revenue from sales_performance where 
salesperson = 'Samantha' or
salesperson ='Lisa';
