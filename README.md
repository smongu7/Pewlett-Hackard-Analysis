# Pewlett-Hackard-Analysis
## Overview 
The purpose of this analysis was to introduce us to postgreSQL. To achieve this, we were given the following scenario: A large company (Pewlett-Hackard) has a large number of employees who are about to retire. The company tasks one of their HR analysts (Bobby) to figure out the answer to the following two questions:
  1. Who will be retiring?
  2. How many positions will need to be filled?
 
To help Bobby find the answer to these questions, we learned how to perform the following tasks in postgreSQL:
- design an ERD
- create a database
- use a databse
- import and export large CSV datasets
- use joins to create new tables
- write SQL statements
## Results 

![retiring_titles](https://user-images.githubusercontent.com/94420548/154877877-b8577e4a-fbc6-4206-ab20-edfc16bb8978.png)

- Roughly 94% of everyone who is eligibile to retire is either an engineer or a staff.
- Roughly 49% of everyone who is eligible to retire is an engineer.
- Roughly 45% of everyone who is eligible to retire is a staff.
- Roughly 4.7% (1,549 people) of people are eligible to be a mentor in the mentorship program.
## Summary
According to the results, the most people who will be retiring are engineers and staff. About 33,118 positions total will need to be filled. There are two additional tables that would be helpful in determining who is retiring and who is eligible to be in the mentorshi program. They are the following:
- the number of people eligibile to retire by department
- the number of people who are eligibile to be a mentor by department

This way, we could figure out how many positions need to be filled in each department. We could also figure out how many people per department could participate in the mentorship program. We could use the number of people eligible to be a mentor by department combined with title of the employees eligible to retire to find a ratio of mentors to mentees in the mentorship program by department.
