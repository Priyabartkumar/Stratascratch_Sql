Q)Find the number of employees working in the Admin department that joined in April or later, in any year.

select count(worker_id)
from worker
where joining_date Between '2014-04-01' and curdate() and department = 'Admin';

         //OR

 SELECT 
    COUNT(worker_id) 
    FROM worker
WHERE MONTH(joining_date) >=4 AND department = 'Admin'; 
