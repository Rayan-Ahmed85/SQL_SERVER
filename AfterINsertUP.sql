create table emp_tbl(
id int primary key identity(1,1),
name varchar(50),
salary int 
)

create table log_tbl(
id int primary key identity(1,1),
logMesssage varchar(100),
logDate DateTime
)

--AFTER INSERT
CREATE TRIGGER tgAfter_insert
ON emp_tbl
after insert
AS
Begin
--RESULT
insert into log_tbl(logMesssage,logDate)
select 'EMP INSERTED' + name , GETDATE ()
from inserted;
end

INSERT INTO emp_tbl(name, salary)values('Ali', 110000)
INSERT INTO emp_tbl(name, salary)values('M Basit', 10000)


--AFTER UPDATE
CREATE TRIGGER tgUPDATE
ON emp_tbl
after UPDATE
AS
Begin
--RESULT
insert into log_tbl(logMesssage,logDate)
select 'EMP UPDATE' + name , GETDATE ()
from inserted;
end

--AFTER DELETE
CREATE TRIGGER tgDELETE
ON emp_tbl
after insert
AS
Begin
--RESULT
insert into log_tbl(logMesssage,logDate)
select 'EMP INSERTED' + name , GETDATE ()
from DELETED;
end

DELETE FROM log_tbl WHERE id = 8;

select *from log_tbl
select *from emp_tbl
