-- DELIVERABLE 1: NUM OF RETIRING EMPLOYEES BY TITLE
-- PART 1: CREATE RETIREMENT_TITLES TABLE
SELECT e.emp_no, e.first_name, e.last_name, t.titles, t.from_date, t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
ORDER BY e.emp_no;

SELECT * FROM retirement_titles

-- PART 2: CREATE UNIQUE_TITLES TABLE
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
titles
INTO unique_titles
FROM retirement_titles as rt
WHERE (rt.to_date = '9999-01-01')
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles

-- PART 3: CREATE RETIRING_TITLES TABLE
SELECT COUNT(ut.emp_no), ut.titles
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.titles
ORDER BY COUNT (ut.emp_no) DESC;

-- DELIVERABLE 2
SELECT DISTINCT ON (e.emp_no) e.emp_no, 
	e.first_name, 
	e.last_name, 
	e.birth_date, 
	de.from_date, 
	de.to_date,
	t.titles
INTO mentorship_eligibility
FROM employees as e
    INNER JOIN dept_emp as de
    ON (e.emp_no = de.emp_no)
    INNER JOIN titles as t
    ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

SELECT * FROM mentorship_eligibility