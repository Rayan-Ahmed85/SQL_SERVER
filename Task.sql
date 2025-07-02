Create Database Task
use Task
create table Costumer(id int  primary key identity(1,1),Name varchar(100),Email varchar(100) ,Phone int)
create table Cateogry (id int primary key identity(1,1),Name Varchar(100))
create table Product(id int primary key identity(1,1), Name Varchar(100),Price int ,Pro_Description Varchar(100),
C_id int Constraint Cateogry_id Foreign Key (C_id) references Cateogry(id))
Drop Database Task
create table ORDERS(id int identity(1,1),Order_Date Date, Order_Number int primary key,Costumer_id int
 Constraint Costumer_id Foreign Key (Costumer_id) references Costumer(id))
 create table order_item(id int primary key identity(1,1),
 Order_Number int, Product_id int, Qty int, Constraint Order_Num Foreign Key (Order_Number) references ORDERS(Order_Number)
  ,Constraint Pro_id Foreign Key (Product_id) references Product(id));
  
 INSERT INTO Costumer (Name, Email, Phone) VALUES
    ('Ali Khan'      , 'ali.khan@example.com'    , 1234567890),
    ('Sara Ahmed'    , 'sara.ahmed@example.com'  , 987654321 ),
    ('Bilal Sheikh'  , 'bilal.sheikh@example.com', 111222333 ),
    ('Fariha Siddiq' , 'fariha.sid@example.com'  , 222333444 ),
    ('Omar Farooq'   , 'omar.farooq@example.com' , 133557799 ),
    ('Nida Hasan'    , 'nida.hasan@example.com'  , 998877665 ),
    ('Hamza Riaz'    , 'hamza.riaz@example.com'  , 112358132 ),
    ('Kiran Malik'   , 'kiran.malik@example.com' , 444555666 ),
    ('Zain Ul Abidin', 'zain.abidin@example.com' , 555666777 ),
    ('Ayesha Qureshi', 'ayesha.q@example.com'    , 246810121 );
	Select*from Costumer

	INSERT INTO Cateogry (Name) VALUES
    ('Electronics'),
    ('Home Appliances'),
    ('Furniture'),
    ('Groceries'),
    ('Clothing');
	select*from Cateogry
	INSERT INTO Product (Name, Price, Pro_Description, C_id) VALUES
	('LED TV 42"'            , 45000, 'Full‑HD smart LED television', 1),
	('Microwave Oven 20 L'   , 18000, 'Digital solo microwave'     , 2),
	('Sheesham Dining Table' , 30000, '6‑seater solid‑wood table'  , 3),
	('Basmati Rice 5 kg'     ,  2600, 'Premium long‑grain rice'    , 4),
	('Menʼs Polo Shirt'      ,  2200, 'Cotton slim‑fit polo'       , 5),
	('Refrigerator 320 L'    , 65000, 'No‑frost double‑door fridge', 2),
	('Ergonomic Office Chair', 12000, 'Mesh‑back swivel chair'     , 3),
	('Cooking Oil 3 L'       ,  1450, 'Refined sunflower oil'      , 4),  
	('Womenʼs Denim Jeans'   ,  3200, 'Stretch skinny jeans'       , 5),
	('Bluetooth Speaker 10 W',  3500, 'Portable wireless speaker'  , 1);
	select * from Product
	SELECT p.id,p.Name AS Product,p.Price,p.Pro_Description AS [Description],c.Name AS Category FROM   Product p JOIN
	 Cateogry c ON c.id = p.C_id;
	 INSERT INTO ORDERS (Order_Date, Order_Number, Costumer_id) VALUES
    ('2025‑07‑01', 2001, 1),('2025‑07‑01', 2002, 2),('2025‑07‑02', 2003, 3),('2025‑07‑02', 2004, 4),
    ('2025‑07‑03', 2005, 5),('2025‑07‑03', 2006, 6),('2025‑07‑04', 2007, 7),('2025‑07‑04', 2008, 8),
	('2025‑07‑05', 2009, 9),('2025‑07‑05', 2010, 10);
	SELECT * FROM ORDERS;

	INSERT INTO order_item (Order_Number, Product_id, Qty) VALUES
    (2001, 1, 2),(2001, 5, 1),(2002, 2, 1),(2002, 6, 3),(2003, 3, 4),(2003, 7, 2),(2004, 4, 1),
    (2004, 8, 3),(2005, 5, 1),(2005, 9, 2),(2006, 6, 2),(2006,10, 1),(2007, 7, 1),(2007, 1, 1),
    (2008, 8, 4),(2008, 2, 2),(2009, 9, 3),(2009, 3, 1),(2010,10, 2),(2010, 4, 1);
	select * from order_item

	SELECT
    oi.id,
    oi.Order_Number,
    o.Order_Date,
    p.Name        AS Product,
    oi.Qty,
    p.Price,
    oi.Qty * p.Price AS Line_Total
FROM order_item oi
JOIN ORDERS  o ON o.Order_Number = oi.Order_Number
JOIN Product p ON p.id           = oi.Product_id;