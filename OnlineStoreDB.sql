CREATE DATABASE OnlineStoreDB;

USE OnlineStoreDB;

-- Create Address Table
CREATE TABLE Addresses(
AddressID INT PRIMARY KEY,
AddressLine VARCHAR(100),
County VARCHAR(20),
ZipCode VARCHAR (100)
);
-- Create Customers Table
CREATE TABLE Customers (
CustomerID INT PRIMARY KEY AUTO_INCREMENT,
FName VARCHAR(50),
LName VARCHAR(50),
Email VARCHAR(30),
AddressID INT,
PhoneNo VARCHAR(20),
FOREIGN KEY (AddressID) REFERENCES Addresses(AddressID)
);

-- Create Categories Table
CREATE TABLE Category (
CategoryID INT PRIMARY KEY AUTO_INCREMENT,
CategoryName VARCHAR(50)
);

-- Create Products Table
CREATE TABLE Products(
ProductID INT PRIMARY KEY AUTO_INCREMENT,
ProdcutDescription VARCHAR (255),
Price DECIMAL (10,2),
Quantity INT,
CategoryID INT,
Picture VARCHAR (255),
FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

-- Create Payment method table
CREATE TABLE Payment(
PaymentID INT PRIMARY KEY AUTO_INCREMENT,
PaymentDate DATETIME,
Method VARCHAR(100),
Amount DECIMAL(10,2),
CustomerID INT,
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Create Table shipping methods
CREATE TABLE Shipping(
ShippingID INT PRIMARY KEY AUTO_INCREMENT,
ShippingDate DATETIME,
ShippingAddressID INT,
County VARCHAR(30),
ZipCode VARCHAR (20),
CustomerID INT,
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
FOREIGN KEY (ShippingAddressID) REFERENCES Addresses(AddressID)
);

-- Create Orders Table
CREATE TABLE Orders(
OrderID INT PRIMARY KEY AUTO_INCREMENT,
OrderDate DATETIME,
TotalPrice DECIMAL (10,2),
CustomerID INT,
PaymentID INT,
ShippingID INT,
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
FOREIGN KEY (PaymentID) REFERENCES Payment(PaymentID),
FOREIGN KEY (ShippingID) REFERENCES Shipping(ShippingID)
);

-- Create Order_Item Table
CREATE TABLE Order_Item(
Order_ItemID INT PRIMARY KEY AUTO_INCREMENT,
Quantity INT NOT NULL,
Price DECIMAL (10,2),
ProductID INT,
OrderID INT,
FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Create Table Cart
CREATE TABLE Cart(
CartID INT,
Quantity INT,
TotalPrice DECIMAL(10,2),
CustomerID INT,
ProductID INT,
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
