create database Hexashop

create table tbl_User(
Users_ID int identity primary key,
User_Type varchar(15) not null
)

create table tbl_Admin(
Amin_ID int identity primary key,
Admin_Username varchar(50) not null,
Admin_Password varchar(10) not null,
Users_ID int foreign key references tbl_User(Users_ID)
)

create table tbl_Customer(
Cust_ID int identity primary key,
Cust_Name varchar(50) not null,
Cust_Email varchar(50) not null,
Cust_Phone int unique,
Cust_Addredd varchar(50) not null,
Users_ID int foreign key references tbl_User(Users_ID)
)

create table tbl_Payment(
Pay_ID int identity primary key,
Pay_Method varchar(50) not null
)

create table tbl_Gender(
Gender_ID int identity primary key,
Gender varchar(10) not null
)

create table tbl_ClothType(
Cloth_Type_ID int identity primary key,
Cloth_Type varchar(25) not null
)

create table tbl_Category(
Cat_ID int identity primary key,
Category varchar(20) not null
)

create table tbl_Products(
Prod_ID int identity primary key,
Cloth_Type_ID int foreign key references tbl_ClothType(Cloth_Type_ID),
Category_ID int foreign key references tbl_Category(Cat_ID),
Gender_ID int foreign key references tbl_Gender(Gender_ID),
Prod_Name varchar(50) not null,
)

create table tbl_Colors(
Color_ID int identity primary key,
Color varchar(25) not null unique
)

create table tbl_Size(
Size_ID int identity primary key,
Size varchar(25) not null unique
)

create table tbl_ProductDetails(
Prod_ID int foreign key references tbl_Products(Prod_ID),
Color_ID int foreign key references tbl_Colors(Color_ID),
Size_ID int foreign key references tbl_Size(Size_ID),
Quantity int not null,
Curr_Price money not null
)

create table tbl_OrderMaster(
SO_ID int identity primary key,
Cust_ID int foreign key references tbl_Customer(Cust_ID),
Pay_ID int foreign key references tbl_Payment(Pay_ID),
Delivery_Addredd varchar(150) not null
)

create table tbl_OrderDetail(
SO_ID int foreign key references tbl_OrderMaster(SO_ID),
Prod_ID int foreign key references tbl_Products(Prod_ID),
Quantity int not null,
Order_Price money not null
)

select * from tbl_OrderDetail
DROP DATABASE Hexashop;
