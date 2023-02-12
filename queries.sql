
-- 1. employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name as "Last Name", e.first_name as "First Name", e.sex as Sex, s.salary as Salary
FROM employees as e
INNER JOIN salaries as s
on e.emp_no = s.emp_no
ORDER BY emp_no

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date
FROM employees as e
WHERE hire_date between '1986-01-01' and '1986-12-31'

-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT t.title as "Title", d.dept_no as "Department Number", d.dept_name as "Department Names", dm.emp_no as "Employee Number", e.last_name as "Last Name", e.first_name as "First Name" 
FROM departments as d
INNER JOIN dept_manager as dm
on d.dept_no = dm.dept_no
INNER JOIN employees as e
on e.emp_no = dm.emp_no
INNER JOIN titles as t
on e.emp_title_id = t. title_id

--4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT de.dept_no as "Department Number", de.emp_no as "Employee Number", e.last_name as "Last Name", e.first_name "First Name", d.dept_name as "Department Name"
FROM dept_emp as de
INNER JOIN employees as e
on de.emp_no = e.emp_no
INNER JOIN departments as d
on d.dept_no = de.dept_no

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT e.first_name as "First Name", e.last_name as "Last Name", e.sex as "Sex"
FROM employees as e
WHERE e.first_name LIKE 'Hercules' and  e.last_name LIKE 'B%'

-- 6. List each employee in the Sales department, including their employee number, last name, and first name.
SELECT d.dept_name as "Department Name", e.emp_no "Employee Number", e.last_name "Last Name", e.first_name "First Name"
FROM employees as e
INNER JOIN dept_emp as de
on de.emp_no = e.emp_no
INNER JOIN departments as d
on d.dept_no = de.dept_no
WHERE d.dept_name LIKE 'Sales'


-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT d.dept_name as "Department Name", e.emp_no "Employee Number", e.last_name "Last Name", e.first_name "First Name"
FROM employees as e
INNER JOIN dept_emp as de
on de.emp_no = e.emp_no
INNER JOIN departments as d
on d.dept_no = de.dept_no
WHERE d.dept_name = 'Development' or d.dept_name = 'Sales'

-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT e.last_name as "Last Names", count(e.last_name) as "Frequency Counts of Each Name"
FROM employees as e
GROUP BY e.last_name
ORDER BY count(e.last_name) DESC



