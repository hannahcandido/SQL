Methodology
The goal of this project was to design and implement a relational database that effectively stores and manages employee, department, title, and salary information. 
The core entities identified in the database are:
	Employees: Store essential information such as employee number, name, gender, and hire date.
	Departments: Represent various departments within the organization.
	Titles: Capture the job titles associated with employees.
	Salaries: Store employee salary information.
	Dept_emp: Track which employees belong to which departments.
	Dept_manager: Store the relationship between managers and the departments they manage.
The schema was designed to allow for efficient data storage and retrieval.
Each table was created to handle a specific type of data, ensuring that related data is kept in separate, well-defined structures.
o	Primary Keys were used for each table to ensure each record can be uniquely identified. For instance:
	emp_no for the employees table.
	dept_no for the departments table.
o	Foreign Keys were used to define relationships between tables,. For example:
	The emp_no column in the employees table is referenced in both the salaries and dept_emp tables.
	The dept_no column in the departments table is referenced in the dept_emp and dept_manager tables.
o	Not Null : Essential fields like employee names, hire dates, and department numbers were set with the NOT NULL constraint to prevent incomplete data from being entered.

Once the schema was established, various SQL queries were designed to retrieve relevant data about employees, their departments, and salaries. These queries were structured to:
•	Fetch basic employee data such as employee number, name, and salary.
•	Filter employees by specific criteria (e.g., hire date or name).
•	Join tables to provide department-specific information (e.g., manager details, employees in specific departments).
•	Aggregate data to count occurrences, such as the number of employees sharing the same last name.
Example queries include:
•	Retrieving employee details: Selecting the employee number, last name, first name, sex, and salary from employees and salaries.
•	Filtering employees by hire date: Identifying employees hired within a specific year (e.g., 1986).
•	Listing department managers: Joining the dept_manager table to identify which employee manages which department.
•	Counting occurrences of last names: Aggregating data to find out how many employees share the same last name.
