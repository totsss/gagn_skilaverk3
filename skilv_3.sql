use 1608003640_company;

create table deptsal (
	dept_no int,
	totalsalary int
);
insert into deptsal values
    (1,0),
    (2,0),
    (3,0),
    (4,0);



delimiter //
create procedure updateSalary (in dept_param1 int)
begin
	update deptsal
		set totalsalary = (select sum(salary) from employee where dept_no = dept_param1 ) where dept_no = dept_param1;
end ;//

call updateSalary(1);
call updateSalary(2);
call updateSalary(3);
call updateSalary(4);



delimiter //
create procedure updatewhileSalary ()
begin
declare dept_param2 int default 1;
	
    while dept_param2 < 4 do
        update deptsal
        set totalsalary = (select sum(salary) from employee where dept_no = dept_param2 ) 
        where dept_no = dept_param2;
        set dept_param2= dept_param2 + 1;
        call updatewhilesalary(dept_param2);
	end while;
end ;//

delimiter ;

delimiter //
create procedire curupdate()
begin
declare dept_param3 int default 1




select * from deptsal;


show procedure status;

drop procedure updateSalary;

reset procedure updateSalary;


/* 9*/
delimiter //
create procedure raiseSalary (in parameter1 int)
begin 
	update employee 
    set salary = salary * 1.10;
end;//



	
 Union

 
	
Intersect 

 
	
Difference

 
	
Divide 

 

 