# sql-challenge
Employee Database

Data Modeling
Inspect the CSVs and sketch out an ERD of the tables. Feel free to use a tool like http://www.quickdatabasediagrams.com.

Data Engineering


Use the information you have to create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints.


The schema should be saved in a file called schema.sql, which can be run once to create and populate all base tables in the database.

For the primary keys check to see if the column is unique, otherwise create a composite key. Which takes two primary keys in order to uniquely identify a row. Optional: A helpful function you might look at is md5(), which will generate a unique hash for each combination of composite keys. Check this out for more info.
Be sure to create tables in the correct order to handle foreign keys.



Import each CSV file into the corresponding SQL table. Note be sure to import the data in the same order that the tables were created and account for the headers when importing to avoid errors.



Data Analysis
Once you have a complete database, write a query to select the following information from the database.
Save the queries in a file called queries.sql:


Select the employee number, last name, first name, sex, and salary of all employees, ordered by employee number


Select the first name, last name, and hiring date for all employees hired in 1986


Select the department number, department name, employee number, last name, and first name of all managers of each department


Select the employee number, last name, first name, and department of each employee, ordered by employee number


Select first name, last name, birth date, and sex of all employees whose first name is "Hercules" and last name begins with a "B"


Select employee number, last name, first name, and department name of all employees in the Sales department, ordered by employee number


Select employee number, last name, first name, and department name of all employees in the 'Sales' OR the 'Development' department, ordered by employee number

Count the number of employees, grouped by last name.
