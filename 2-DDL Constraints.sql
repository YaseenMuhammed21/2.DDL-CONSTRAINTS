##DDL Constraints
#Create a database called “Sales” and create a new table named “Orders” in the Sales database with columns: (Order_Id, Customer_name, Product_Category, Ordered_item, Contact_No). 
#Use constraints: Primary Key Unique Not Null 
#1. Add a new column named “order_quantity” to the orders table. 
#2. Rename the orders table to the sales_orders table. 
#3. Insert 10 rows into the sales_orders table. 
#4. Retrieve customer_name and Ordered_Item from the sales_orders table. 
#5. Use the update command to change the name of the product for any row. 
#6. Delete the sales_orders table from the database.

-- CREATING THE DATABASE 

CREATE DATABASE SALES;

USE Sales; -- USING DATABASE SALES FOR CREATING THE TABLE Orders

CREATE TABLE Orders (
    Order_Id INT PRIMARY KEY,  -- PRIMARY KEY CONSTRAINT ON Order_Id
    Customer_Name VARCHAR(100) NOT NULL,  -- NOT NULL CONSTRAINT ON Customer_Name
    Product_Category VARCHAR(50),
    Ordered_item VARCHAR(100) NOT NULL,  -- NOT NULL CONSTRAINT ON Ordered_item
    Contact_No VARCHAR(15) UNIQUE NOT NULL  -- UNIQUE CONSTRAINT ON Contact_No
);

-- DESCRIBING THE TABLE Orders

DESC Orders;

-- ADDING THE NEW COLUMN TO Orders TABLE AS

ALTER TABLE Orders
ADD Order_Quantity INT NOT NULL; -- NOT NULL CONSTRAINT ON Order_Quantity


-- RENAMING Order TABLE TO Sales_Orders

RENAME TABLE Orders TO Sales_Orders;

-- DESCRIBING THE TABLE Sales_Orders

DESC Sales_Orders;

-- INSERTING THE VALUES IN TO THE COLUMN OF THE TABLE Sales_Orders

INSERT INTO Sales_Orders (Order_Id, Customer_name, Product_Category, Ordered_item, Contact_No, order_quantity)
VALUES
	(1, 'Dani Alves', 'Clothing', 'Jeans', '1234567890', 11),
	(2, 'Lionel Messi', 'Clothing', 'T-shirt', '0102030405', 10),
	(3, 'Lamine Yamal', 'Home Appliances', 'Microwave', '0607080900', 2),
	(4, 'Pablo Gavi', 'Furniture', 'Sofa', '0504030201', 5),
	(5, 'Pedri Gonzales', 'Furniture', 'Table', '0908070600', 2),
	(6, 'Rafinha', 'Furniture', 'Chair', '9876541230', 20),
	(7, 'Dani Olmo', 'Electronics', 'Smartphone', '1239874560', 1),
	(8, 'Andres Iniesta', 'Furniture', 'Chair', '9871236540', 15),
	(9, 'Thomas Shelby', 'Electronics', 'Samrtphone', '9182734650', 2),
	(10, 'Marc Bernal', 'Electronics', 'Samrtphone', '1928374650', 1),
	(11, 'Marc Casado', 'Electronics', 'Laptop', '1346798250', 1),
	(12, 'Marc Casado', 'Electronics', 'Laptop', '9137482650', 2);

-- DISPLAYING ALL VALUES INSERTED INTO THE TABLE

SELECT * FROM Sales_Orders;

-- RETRIEVING THE Customer_Name AND Ordered_Item FROM Sales_Orders

SELECT Customer_Name, Ordered_Item FROM Sales_Orders;

-- UPDATING THE VALUE OF Order_Id 9,10 FOR THE Order_Item Samrtphone TO Smartphone

UPDATE Sales_Orders
SET Ordered_Item = 'Smartphone'
WHERE Ordered_Item = 'Samrtphone' AND Order_Id IN (9, 10);

-- DISPLAYING ALL VALUES INSERTED INTO THE TABLE

SELECT * FROM Sales_Orders;

-- RETRIEVING THE Customer_Name AND Ordered_Item FROM Sales_Orders

SELECT Customer_Name, Ordered_Item FROM Sales_Orders;

-- UPDATING THE VALUE OF Order_Id 11,12 FOR THE Order_Item Laptop TO Gaming_Laptop

UPDATE Sales_Orders
SET Ordered_Item = 'Gaming_Laptop'
WHERE Ordered_Item = 'Laptop' AND Order_Id IN (11, 12);

-- RETRIEVING THE Customer_Name AND Ordered_Item FROM Sales_Orders

SELECT Customer_Name, Ordered_Item FROM Sales_Orders;

-- UPDATING THE VALUE OF Customer_Name Marc Casado FOR THE Order_Id 12 to Marc TerStegen

UPDATE Sales_Orders
SET Customer_Name = 'Marc TerStegen'
WHERE Customer_Name = 'Marc Casado' AND Order_Id IN (12);

-- RETRIEVING THE Customer_Name AND Ordered_Item FROM Sales_Orders

SELECT Customer_Name, Ordered_Item FROM Sales_Orders;

-- DELETING THE ENTIRE TABLE FROM THE DATABASE

DROP TABLE Sales_Orders;


