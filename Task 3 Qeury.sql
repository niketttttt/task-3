CREATE TABLE Customers (
  Customer_ID serial PRIMARY KEY,
  Customer_Name VARCHAR(50),
  email_id VARCHAR,
  mobile_number VARCHAR,
  Order_ID serial,
  Product_ID serial,
  FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
  FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID)
);
select * from Customers
	
CREATE TABLE Orders (
  Order_ID serial PRIMARY KEY,
  Order_Date DATE,
  ship_Date DATE
);

 select * from Orders
	
CREATE TABLE Products (
  Product_ID serial PRIMARY KEY,
  Product_Name VARCHAR(50),
  discount_rate int
);	

select * from Products


INSERT INTO Products (Product_Name, discount_rate) VALUES 
 ('T-Shirt',10),
 ('Coffee Mug',15),
 ('Laptop',5),
 ('Headphones',20),
 ('Notebook',0),
 ('Pen',0),
 ('Water Bottle',10),
 ('Backpack',15),
 ('Desk Lamp',5),
 ('Mouse',20)

select * from Products	


INSERT INTO Orders (Order_Date, Ship_Date) VALUES
  ('2024-06-05', '2024-06-10'),
  ('2024-06-04', '2024-06-09'),
  ('2024-06-03', '2024-06-08'),
  ('2024-06-01', '2024-06-06'),
  ('2024-05-31', '2024-06-05'),
  ('2024-05-30', '2024-06-04'),
  ('2024-05-29', '2024-06-03'),
  ('2024-05-28', '2024-06-01'),
  ('2024-05-25', '2024-05-30'),
  ('2024-05-24', '2024-05-29')
  
select * from Orders

INSERT INTO Customers (Customer_Name, Email_ID, Mobile_Number, Order_ID, Product_ID) VALUES
  ('John Smith', 'john.smith@example.com', '123-456-7890', 1, 1),
  ('Jane Doe', 'jane.doe@example.com', '987-654-3210', 2, 2),
  ('Michael Brown', 'michael.brown@example.com', '555-123-4567', 3, 3),
  ('Alice Garcia', 'alice.garcia@example.com', '888-777-6655', 4, 4),
  ('David Hernandez', 'david.hernandez@example.com', '444-333-2211', 5,5),
  ('Margaret Lee', 'margaret.lee@example.com', '333-222-1100', 6, 6),  -- No order
  ('Charles Miller', 'charles.miller@example.com', '111-000-9988', 7, 7),
  ('Sarah Jones', 'sarah.jones@example.com', '777-888-9900', 8,8),
  ('William Davis', 'william.davis@example.com', '222-111-0077', 9, 9),
  ('Jennifer Lopez', 'jennifer.lopez@example.com', '999-000-8866', 10, 10)

select * from Customers