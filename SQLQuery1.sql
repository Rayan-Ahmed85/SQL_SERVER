Create Database Products
use Products
Create Table products
(id int Primary key Identity(1,1),
Name varchar(200),
Category VARCHAR(50),
Price int,
Colour Varchar(20),
QuantityInStock INT,
Product_Description VARCHAR(255)
)
INSERT INTO Products(Name, Category, Price,Colour, QuantityInStock,Product_Description)
VALUES('Smartphone', 'Electronics', 30000, 'Silver', 20, '6.5-inch display, 128GB storage'),
('Headphones', 'Accessories', 5000, 'Red', 50, 'Noise cancelling over-ear headphones'),
('Backpack', 'Bags', 2000, 'Blue', 15, 'Waterproof laptop backpack'),
('Keyboard', 'Electronics', 1500, 'Black', 25, 'Mechanical keyboard with RGB lights'),
('Mouse', 'Electronics', 1000, 'White', 40, 'Wireless optical mouse'),
('Monitor', 'Electronics', 22000, 'Black', 10, '24-inch Full HD LED Monitor'),
('Tablet', 'Electronics', 35000, 'Gray', 12, '10-inch Android tablet'),
('Power Bank', 'Accessories', 2500, 'Black', 35, '10000mAh portable charger'),
('Charger', 'Accessories', 1200, 'White', 30, 'Fast charging USB-C charger'),
('TV', 'Electronics', 70000, 'Black', 5, '50-inch Smart LED TV'),
('Speaker', 'Electronics', 4000, 'Red', 18, 'Bluetooth portable speaker'),
('Fan', 'Home Appliances', 6000, 'White', 10, '16-inch pedestal fan'),
('Iron', 'Home Appliances', 2500, 'Blue', 20, 'Non-stick soleplate steam iron'),
('Air Conditioner', 'Home Appliances', 95000, 'White', 3, '1.5 Ton Inverter AC'),
('Washing Machine', 'Home Appliances', 65000, 'Silver', 6, 'Top load fully automatic'),
('Smartwatch', 'Electronics', 8000, 'Black', 22, 'Fitness smartwatch with heart monitor'),
('Camera', 'Electronics', 40000, 'Black', 7, 'DSLR Camera 24MP with lens'),
('Microwave Oven', 'Home Appliances', 12000, 'Silver', 9, '20L Convection microwave'),
('Bluetooth Earbuds', 'Accessories', 3500, 'White', 28, 'True wireless earbuds with case'),
('Smartphone', 'Electronics', 30000, 'Silver', 20, '6.5-inch display, 128GB storage'),
('Headphones', 'Accessories', 5000, 'Red', 50, 'Noise cancelling over-ear headphones'),
('Backpack', 'Bags', 2000, 'Blue', 15, 'Waterproof laptop backpack'),
('Keyboard', 'Electronics', 1500, 'Black', 25, 'Mechanical keyboard with RGB lights'),
('Mouse', 'Electronics', 1000, 'White', 40, 'Wireless optical mouse'),
('Monitor', 'Electronics', 22000, 'Black', 10, '24-inch Full HD LED Monitor'),
('Tablet', 'Electronics', 35000, 'Gray', 12, '10-inch Android tablet'),
('Power Bank', 'Accessories', 2500, 'Black', 35, '10000mAh portable charger'),
('Charger', 'Accessories', 1200, 'White', 30, 'Fast charging USB-C charger'),
('Microwave Oven', 'Home Appliances', 12000, 'Silver', 9, '20L Convection microwave');
Select * From products
delete from products where id=1
DROP TABLE Products;
SELECT DISTINCT Price from products 
SELECT DISTINCT Name from products order by Name DESC
        --Aggregate Function
Select SUM (Price) AS Total_Price_Products  from products
Select COUNT (Colour) AS Total_NO_OF_Products_Colour from products
Select COUNT (Colour) AS Total_Whites  from products where Colour='White'
Select COUNT (Colour) AS Total_Blacks  from products where Colour='Black'
Select COUNT (Name) AS Total_NO_OF_Products  from products
Select AVG (Price) AS Average_OF_Products  from products
Select MIN (Colour) AS Total_NO_OF_Products  from products
Select MAX (Colour) AS Total_NO_OF_Products  from products

   --Group

   SELECT QuantityInStock , sum(QuantityInStock) As TotalAmount,
   Count(QuantityInStock) As No_of_Price from products 
   group by QuantityInStock order by QuantityInStock ASC
   Select * From products


         --having
SELECT QuantityInStock , sum(QuantityInStock) As TotalAmount,
   Count(QuantityInStock) As No_of_Price from products 
   group by QuantityInStock having count(QuantityInStock) >=2 order by QuantityInStock ASC
