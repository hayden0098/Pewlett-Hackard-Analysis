# Pewlett-Hackard-Analysis

## Overview of
Pewlett Hackard, a large company boasting several thousand emloyees and the time of it's retired tide is approaching soon. So the HR manager planning to offer a retirement package for retire employees, first of all must be knowing how many retirement employees will have and which title position will need to be filled in order to prevent plenty of job position vacancies. We create entitu relationship diagrams (ERSs), use SQL import data from csv files to database, then create queries to finding who and how many employee going to retire, as well as identify who are eligible to participate in mentorship program.

## Pewlett-Hackard-Analysis Result:
- There are 133776 employees record who meet the age of retire, table contain the date of their promotion and state the most recent position title of them.

- Counting the unique employee number, there are 90398 employees are going to retire in future. 

- The number of employees going to retire for each title:

    ![retiring_titles](https://github.com/hayden0098/Pewlett-Hackard-Analysis/blob/main/Resources/retiring_titles.jpg)

        Senior Engineer has 29414 employees;

        Senior Staff has 28254 employees;

        Engineer has 14222 employees;

        Staff has 12243 employees;

        Technique Leader has 4502 employees;

        Assistant Engineer has 1761 employees;

        Manager has 2 employees
    
- The employees who's birth date between Jan 1, 1965 and Dec 31, 1965 will be eligibile to mentorship, and there are 1549 employees eligiible to the mentorship program. 77 of Technique Leader, 569 of Senior Staff, 155 of Staff, 529 of Senior Engineer, 190 of Engineer, 29 of Assistant Engineer.

![mentorship_eligibilty](https://github.com/hayden0098/Pewlett-Hackard-Analysis/blob/main/Resources/mentorship_eligibilty.jpg)

## Summary:
1. How many roles will need to be filled as the "silver tsunami" begins to make an impact?

In total 90398 roles need to be filled as the begins of impact.

2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

For each department:

![dept_retiring_title](https://github.com/hayden0098/Pewlett-Hackard-Analysis/blob/main/Resources/dept_retiring_titles.jpg) ![dept_mentorship_eligibilty](https://github.com/hayden0098/Pewlett-Hackard-Analysis/blob/main/Resources/dept_mentorship_eligibilty.jpg)

In Sales department, there are 244 out of 14612 retirement employees who eligible to mentorship program; 

In Research department, there are 103 out of 5543 retirement employees who eligible to mentorship program; 

In Quality Management department, there are 86 out of 5395 retirement employees who eligible to mentorship program;

In Production department, there are 322 out of 19949 retirement employees who eligible to mentorship program; 

In Marketing department, there are 117 out of 5181 retirement employees who eligible to mentorship program; 

In Human Resources, there are 97 out of 5059 retirement employees who eligible to mentorship program; 

In Finance department, there are 64 out of 4838 retirement employees who eligible to mentorship program; 

In Development department, there are 396 out of 23889 retirement employees who eligible to mentorship program; 

In Customer Service, there are 120 out of 5932 retirement employees who eligible to mentorship program;

All department are only have below 5% of employees eligble to mentor next generation, as result each department don't have enough qualified retirement-ready employees.
