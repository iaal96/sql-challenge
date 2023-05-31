departments
-
dept_no PK VARCHAR(25) 
dept_name VARCHAR(35) 

#manager of each dept
dept_manager
-
dept_no VARCHAR(25) FK >- departments.dept_no
emp_no PK INT FK - employees.emp_no

#employee in each dept
dept_emp
-
id SERIAL PK
emp_no INT FK >-< employees.emp_no 
dept_no VARCHAR(25) FK >- departments.dept_no 

employees
-
emp_no INT PK #NOT NULL
emp_title_id VARCHAR(25) FK >- titles.title_id 
birth_date VARCHAR(25) 
first_name VARCHAR(255) 
last_name VARCHAR(255) 
sex VARCHAR(25) 
hire_date VARCHAR(55) 

titles
-
title_id PK VARCHAR(25) 
title VARCHAR(255) 

salaries
-
emp_no INT PK FK - employees.emp_no 
salary INT 

