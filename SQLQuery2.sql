create database Hexashop

create table tbl_Users(
Users_ID int identity primary key not null,
Users_Name varchar(25) not null,
Users_Email varchar(50) not null unique,
Users_Password varchar(20) not null,
Users_Phone int unique not null,
Users_Address varchar(50) not null,
User_Type varchar(15) not null
)

create table tbl_Payment(
Pay_ID int identity primary key not null,
Pay_Method varchar(50) not null unique
)

create table tbl_Gender(
Gender_ID int identity primary key not null,
Gender varchar(10) not null unique
)

create table tbl_ClothType(
Cloth_Type_ID int identity primary key not null,
Cloth_Type varchar(25) not null unique
)

create table tbl_Category(
Cat_ID int identity primary key not null,
Category varchar(20) not null unique
)

create table tbl_Products(
Prod_ID int identity primary key not null,
Cloth_Type_ID int foreign key references tbl_ClothType(Cloth_Type_ID) not null,
Category_ID int foreign key references tbl_Category(Cat_ID) not null,
Gender_ID int foreign key references tbl_Gender(Gender_ID) not null,
Prod_Name varchar(50) not null,
Prod_Description varchar(50) not null,
Prod_Image nvarchar(150) not null
)

create table tbl_Colors(
Color_ID int identity primary key not null,
Color varchar(25) not null unique
)

create table tbl_Size(
Size_ID int identity primary key not null,
Size varchar(25) not null unique
)

create table tbl_ProductDetails(
Prod_ID int foreign key references tbl_Products(Prod_ID) not null,
Color_ID int foreign key references tbl_Colors(Color_ID) not null,
Size_ID int foreign key references tbl_Size(Size_ID) not null,
Quantity int not null,
Curr_Price money not null
primary key (Prod_ID, Color_ID, Size_ID)
)

create table tbl_OrderMaster(
SO_ID int identity primary key not null,
Users_ID int foreign key references tbl_Users(Users_ID) not null,
Pay_ID int foreign key references tbl_Payment(Pay_ID) not null,
Delivery_Address varchar(150) not null
)

create table tbl_OrderDetail(
SO_ID int foreign key references tbl_OrderMaster(SO_ID) not null,
Prod_ID int foreign key references tbl_Products(Prod_ID) not null,
Quantity int not null,
Order_Price money not null
primary key(SO_ID, Prod_ID)
)


select * from tbl_Category ORDER BY Cat_ID
select * from tbl_ClothType ORDER BY Cloth_Type_ID
select * from tbl_Colors ORDER BY Color_ID
select * from tbl_Gender ORDER BY Gender_ID
select * from tbl_Payment ORDER BY Pay_ID
select * from tbl_Products ORDER BY Prod_ID
select * from tbl_ProductDetails ORDER BY Prod_ID
select * from tbl_Size ORDER BY Size_ID
select * from tbl_Users ORDER BY Users_ID
select * from tbl_OrderMaster ORDER BY SO_ID
select * from tbl_OrderDetail ORDER BY SO_ID
select * from tbl_ProductDetails ORDER BY Curr_Price