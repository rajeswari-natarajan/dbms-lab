Retrieve the names of all employees in department 5 who work more
than 10 hours per week on the ProductX project.
select fname from employee where ssn in (select ssn from employee where dno=5 intersect select essn from works_on where hours > 10);

John
Joyce
Ramesh
--
Find the names of all employees who are directly supervised by ‘Franklin
Wong’.
select fname from employee where super_ssn = (select ssn from employee where fname='Franklin' and lname='Wong');

John
Ramesh
Joyce
---------

For each project, list the project name and the total hours per week (by all
employees) spent on that project


select p1.pname, sum(w.hours) from project p1, works_on w where p1.pnumber=w.pno group by w.pno;

ProductX|52.5
ProductY|37.5
ProductZ|50
Computerization|55
Reorganization|41
Newbenefits|55
------------

