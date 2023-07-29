###### ASSIGNMENT 2 
use day1

CREATE TABLE Scholarship (student_id int, student_name varchar(20),
           father_name varchar(20), place varchar(20),amount int);
           
INSERT INTO Scholarship values (512,'sumit','ashok','rohtak',25000),
                               (513,'nitesh','anil','kharak',40000),
                               (514,'prince','suresh','bhiwani',50000),
                               (515,'amit','ramesh','chamariya',65000);
                               
select * from scholarship;

CREATE TABLE Sales (sales_id int, sales_iteams varchar(20),
                   sales_condition varchar(20),sales_amount int);
                   
INSERT INTO Sales values (512,'AC','GOOD',30000),
                         (513,'TV','nice',12000),
                         (515,'laptop','excelent',45000),
                         (520,'phone','poor',8000);
                         
select * from sales;

select sch.student_id,sch.student_name,sch.father_name,sch.place,sch.amount, sale.sales_id,sale.sales_iteams,sale.sales_condition,sale.sales_amount 
   from scholarship as sch, sales as sale;
   
 ### left join, right join ,union all, union and intersect-------------
 
 
 select sch.student_id,sch.student_name,sch.father_name,sch.place,sch.amount, sale.sales_id,sale.sales_iteams,sale.sales_condition,sale.sales_amount 
   from scholarship as sch left join sales sale on sch.student_id=sale.sales_id;
   
   
    select sch.student_id,sch.student_name,sch.father_name,sch.place,sch.amount, sale.sales_id,sale.sales_iteams,sale.sales_condition,sale.sales_amount 
   from scholarship as sch right join sales sale on sch.student_id=sale.sales_id;
   
    select sch.student_id,sch.student_name,sch.father_name,sch.place,sch.amount, sale.sales_id,sale.sales_iteams,sale.sales_condition,sale.sales_amount 
   from scholarship as sch inner join sales sale on sch.student_id=sale.sales_id;
   
    select sch.student_id,sch.student_name,sch.father_name,sch.place,sch.amount, sale.sales_id,sale.sales_iteams,sale.sales_condition,sale.sales_amount 
   from scholarship as sch left join sales sale on sch.student_id=sale.sales_id union select sch.student_id,sch.student_name,sch.father_name,sch.place,sch.amount, sale.sales_id,sale.sales_iteams,sale.sales_condition,sale.sales_amount 
   from scholarship as sch right join sales sale on sch.student_id=sale.sales_id;
   

  select sch.student_id,sch.student_name,sch.father_name,sch.place,sch.amount, sale.sales_id,sale.sales_iteams,sale.sales_condition,sale.sales_amount 
   from scholarship as sch left join sales sale on sch.student_id=sale.sales_id union all select sch.student_id,sch.student_name,sch.father_name,sch.place,sch.amount, sale.sales_id,sale.sales_iteams,sale.sales_condition,sale.sales_amount 
   from scholarship as sch right join sales sale on sch.student_id=sale.sales_id;
   
   select * from scholarship where scholarship.student_id in(select sales.sales_id from sales);
   
   
 

 
 