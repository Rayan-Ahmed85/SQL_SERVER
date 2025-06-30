create Database School_ABC
use School_ABC
Create Table Teachers (
id int primary key identity(1,1),
Name varchar(100),
Phone int,
email Varchar(100) UNIQUE
)
insert into Teachers(Name,Phone,email)values('Rayan',03161101,'Rayan@gmail.com'),
('RayanAhmed',03161101,'RayanAhmed@gmail.com');
create table Cateogry (id int primary Key Identity(1,1),
Name Varchar(100))
create table products(id int primary key identity(1,1),
Name varchar(100),
Price int ,
stock int ,
C_id int,
constraint Cateogry_id Foreign Key(C_id)references Cateogry(id))
INSERT INTO Cateogry (Name)
VALUES ('Electronics'),
       ('Home & Kitchen'),
       ('Books'),
       ('Clothing'),
       ('Sports & Outdoors'),
       ('Toys & Games'),
       ('Beauty & Personal Care'),
       ('Automotive'),
       ('Office Supplies'),
       ('Garden & Outdoor');

	   insert into Products(Name,Price,stock,C_id)values(
	   'Fan',10500,10,1);
	   select * from Cateogry
	   select * from Products
INSERT INTO Products (Name, Price, Stock, C_id)
VALUES
    ('Smartphone',          85000, 25, 1),  
    ('Blender',              7500, 40, 2),  
    ('Novel ''1984''',       1200,100, 3),  
    ('Men T‑Shirt',           900, 60, 4),  
    ('Treadmill',           95000,  5, 5),  
    ('Chess Set',            2200, 20, 6),  
    ('Lipstick Set',         1800, 70, 7),  
    ('Car Vacuum Cleaner',   3500, 15, 8),  
    ('Inkjet Printer',      29000,  8, 9);  