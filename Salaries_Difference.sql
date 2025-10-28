Q)Calculates the difference between the highest salaries in the marketing and engineering departments. Output just the absolute difference in salaries.

select(select max(salary)  from db_employee where department_id = 4)- (select max(salary)  from db_employee where department_id=1);

