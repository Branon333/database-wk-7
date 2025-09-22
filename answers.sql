 --  Question 1
CREATE TABLE ProductDetail (
    OrderID INT,
    CustomerName VARCHAR(100),
    Products VARCHAR(100)
);
INSERT INTO ProductDetail(OrderID, CustomerName, Products)
VALUES
(101, 'John Mutiso', 'Laptop'),
(101, 'John Mutiso', 'Mouse'),
(102, 'Jane Mwende', 'Tablet'),
(102, 'Jane Mwende', 'Keyboard'),
(102, 'Jane Mwende', 'Mouse'),
(103, 'Ryan Ogello', 'Phone');
-- Question 2
 CREATE TABLE orders(
OrderID INT PRIMARY KEY,
customerName VARCHAR(100)
);
INSERT INTO orders (OrderID, CustomerName)
VALUES
(101, 'John Mutiso'),
(102, 'Jane Mwende'),
(103, 'Ryan Ogello');

-- Product  table 
CREATE TABLE product(
product_id INT primary key,
productName varchar(100),
quantity INT,
order_id INT,
foreign key(order_id) references orders(OrderID)
);

INSERT INTO  product(product_id,productName,quantity,order_id)
values 
(1,'laptop',2,101),
(2,'Mouse',1,101),
(3,'Tablet',3,102),
(4,'Keyboard',2,102),
(5,'Mouse',1,102),
(6,'Phone',1,103);

