Q)Calculates the difference between the highest salaries in the marketing and engineering departments. Output just the absolute difference in salaries.

select(select max(salary)  from db_employee where department_id = 4)- (select max(salary)  from db_employee where department_id=1);

//OR

select abs(max(a.salary) - max(b.salary)) as sal_diff
from db_employee a, db_employee b
where a.department_id = 4 and b.department_id = 1;

