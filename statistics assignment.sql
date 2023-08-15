### day 6 (module 21)
use day2
### INDEX-----
 
 CREATE table employee(id int primary key, first_name varchar(50),last_name varchar(50),email varchar(100),department varchar(50),salary decimal(10,2));

insert into employee(id, first_name, last_name, email, department, salary)
           values(1,'Sumit','verma','sumit113@gmail.com','HR',50000.00),
                 (2,'Amit', 'sani','amit1995@gmail.com','Health',60000.00),
                 (3,'Parveen','sharma','parveen30@gmail.com','Finance',70000.00),
                 (4,'Yatin','bhadwarj','yatin142@gamil.com','Police',55000.00),
                 (5,'Neeraj','jangra','neeraj20@gmail.com','Marketing',62000.00);
                 
  select * from employee;
  
----- Non-unique index on the "first_name" column

create index idx_first_name on employee (first_name);


### Show this index

show index from employee where key_name= 'idx_first_name';

--- Non-uniqueindex on multiple columns:"department" amd "salary" 

create index idx_department_salary on employee (department,salary);

show index from employee where key_name='department,salary'

                 -- Unique index on the "email" column to enforce uniquess
                  
CREATE UNIQUE INDEX idx_email on employee (email);

show index from employee where key_name='email'

show index from employee;

## Drop index

drop index idx_first_name on employee;

## Subqueries

### Retrieve employees with a salary higher than avarage salary

select * from employee where salary > (select avg(salary) from employee)

select avg(salary)from employee

### find the hightest salary and name of the employee

select first_name,last_name,salary from employee
where salary=(select max(salary) from employee)     ### max salary of the employyes----

select * from employee;



## retrieve the employee from it department

select first_name,last_name,department from employee where department ='IT'

select first_name,last_name,department from employee where department ='HR'

select first_name,last_name,department from employee where department in (select department from employee having department in ('HR'))

### CHECK whether there are empolyee whose salary is greater than 1,00,000

select  first_name,last_name,salary from employee where salary in (select salary from employee having salary > 100000);

### wildcard quaries

### first name start with J---------------------------------------

select * from employee where first_name like 'J%'; 

select * from employee where first_name like 'N%'; 

select * from employee where first_name like 'P%'; 

####  first name ends with n--------------------------------------------------


select * from employee where first_name like '%n';

select * from employee where first_name like '%t';

### last name containing een (anything in last name )

select * from employee where last_name like '%ra%';

select * from employee where last_name like '%ma%';

### to find employees with department HR

select first_name,last_name,department from employee where department like 'HR';

select first_name,last_name,department from employee where department like 'Police';

### Employees with email example

select * from employee where email like '%example%';

### employee name containing "J" or "M" and having a salary greater than 5500

select * from employee where (first_name like '%J%' or first_name like '%M%') and salary > 55000;

### to find out employee with last name exactly having three characters and ending with A--------------------

select * from employee where length(last_name) =3 and last_name like '%A';

select * from employee where length(last_name) =2 and last_name like '%A';   ## first perferance


select last_name from employee where last_name like '_a';






                 