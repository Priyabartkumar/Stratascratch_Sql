Find the best-selling item for each month (no need to separate months by year). The best-selling item is determined by the highest total sales amount, calculated as: total_paid = unitprice * quantity. 
A negative quantity indicates a return or cancellation (the invoice number begins with 'C'. To calculate sales, ignore returns and cancellations.Output the month, description of the item, and the total amount paid.

with monthly_sales as(
    select 
    date_part('month',invoicedate) as month,
    description,
    sum(unitprice * quantity) as total_paid,
    rank() over(
          partition by date_part('month',invoicedate)
          order by sum(unitprice * quantity) desc
    ) as rnk
    from online_retail
    where quantity > 0
    group by month,description
)
select
    month,
    description,
    total_paid
from monthly_sales
where rnk =1;
