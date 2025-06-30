Create Database Task
use Task
create table Costumer(id int  primary key identity(1,1),Name varchar ,Email varchar ,Phone int)
create table Cateogry (id int primary key identity(1,1),Name Varchar(100))
create table Product(id int primary key identity(1,1), Name Varchar(100),Price int ,Pro_Description Varchar(100),
C_id int Constraint Cateogry_id Foreign Key (C_id) references Cateogry(id))

create table ORDERS(id int identity(1,1),Order_Date Date, Order_Number int primary key,Costumer_id int
 Constraint Costumer_id Foreign Key (Costumer_id) references Costumer(id))