select * from employees;

select * from employees where employee_id IN (1, 2, 3);

select * from employees where employee_id IN (4, 5, 6);

select * from employees where employee_id IN (7, 8, 9);

select * from employees where employee_id IN (1, 4, 7);

select * from employees where employee_id IN (2, 5, 8);

----------------------------------------------------------------------------------------------------------

select * from employees where employee_id BETWEEN 1 AND 5;

select * from employees where employee_id BETWEEN 6 AND 10;

select * from employees where employee_id BETWEEN 1 AND 3;

select * from employees where employee_id BETWEEN 6 AND 10;

select * from employees where employee_id BETWEEN 4 AND 8;

-------------------------------------------------------------------------------------------------------------

select * from employees LIMIT 5;

select * from employees ORDER BY employee_id DESC LIMIT 5;

select * from employees WHERE salary > 50000 LIMIT 5;

select employee_id, first_name FROM employees LIMIT 5;

select * from employees OFFSET 5 LIMIT 5;

---------------------------------------------------------------------------------------------------------------

select * from employees ORDER BY employee_id ASC;

select * from employees ORDER BY first_name DESC;

select employee_id, first_name, salary from employees ORDER BY salary DESC;

select * from employees WHERE department_id = 1 ORDER BY last_name ASC;

select first_name, last_name FROM employees ORDER BY first_name ASC, last_name DESC;

------------------------------------------------------------------------------------------------------------

ALTER TABLE employees
ADD CONSTRAINT chk_salary CHECK (salary >= 0);

ALTER TABLE employees
ADD CONSTRAINT chk_employee_id CHECK (employee_id > 0);

ALTER TABLE employees
ADD CONSTRAINT chk_hire_date CHECK (hire_date <= CURRENT_DATE);

ALTER TABLE employees
ADD CONSTRAINT chk_first_name_length CHECK (LENGTH(first_name) > 0);

ALTER TABLE employees
ADD CONSTRAINT chk_last_name_length CHECK (LENGTH(last_name) > 0);

------------------------------------------------------------------------------------------------------------