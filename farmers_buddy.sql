create database farmersbuddy;
use farmersbuddy;
drop database farmersbuddy;
create table Admin(
Admin_Id int(10) primary key,
Pass varchar(20) NOT NULL
);

create table Farmer(
Farmer_Id int(10) primary key,
Farmer_Name varchar(50) NOT NULL,
Pass varchar(20) NOT NULL,
Email varchar(50) NOT NULL unique,
Phone varchar(10) NOT NULL
);
drop table Farmer;


desc Farmer;
select * from Farmer;
 drop table Farmer;
show databases;
use farmersbuddy;
show tables;

create table Product(
P_Id int(10) primary key,
P_Name varchar(50) NOT NULL,
Descpt varchar(200) NOT NULL,
Photo varchar(200) NOT NULL ,
Price int NOT NULL
);


desc Product;
select * from Product;
drop table Product;

create table Cart(
Farmer_Id int(10) NOT NULL,
P_Id int(10) NOT NULL,
P_Name varchar(50) NOT NULL,
Descpt varchar(200) NOT NULL,
Price int NOT NULL,
Quantity int NOT NULL,
constraint FK_ProductID foreign key (P_Id)
references Product(P_Id),
constraint FK_CustomerID foreign key (Farmer_Id)
references Farmer(Farmer_Id)
);  
select* from Cart;

desc Cart;
 drop table Cart;
 
 create table Orders(
 Order_Id int(10) primary key,
 Phone varchar(10) NOT NULL, 
 Name varchar(50) NOT NULL,
 Address varchar(200) NOT NULL,
 Amount int NOT NULL,
 Farmer_Id INT NOT NULL,
 constraint FK_UserID foreign key (Farmer_Id)
references Farmer(Farmer_Id)
 );
 desc Orders;
 

 create table Payment(
 Farmer_Id int(10) NOT NULL,
 Cardholder_Name varchar(50) NOT NULL,
 Amount int NOT NULL,
 Cvv int(3) NOT NULL,
 Expiry_Date varchar(20) NOT NULL,
 Order_Id int(10) NOT NULL,
 Payment_Id int(20) NOT NULL,
 Payment_Type varchar(20) NOT NULL,
 constraint FK_OrderID foreign key (Order_Id)
references Orders(Order_Id),
constraint FK_UsersID foreign key (Farmer_Id)
references Farmer(Farmer_Id)
);
desc Payment;



create table Schemes(
Farmer_Id int(10) NOT NULL,
Accountholder_Name varchar(50) NOT NULL,
Name varchar(50) NOT NULL,
Account_No int(14) NOT NULL,
Bank_Name varchar(50) NOT NULL,
constraint FK_SchemesID foreign key (Farmer_Id)
references Farmer(Farmer_Id)
);
 
  desc Schemes;
  
 create table Feedback(
Feedback_No int(10) primary key,
Farmer_Id int(10) NOT NULL,
Phone varchar(10) NOT NULL,
Quality varchar(50) NOT NULL,
Suggestion  varchar(50) NOT NULL,
constraint FK_FeedbackID foreign key (Farmer_Id)
references Farmer(Farmer_Id)
);
