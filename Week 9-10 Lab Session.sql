Create table if not exists Supplier(SUPP_ID int(10) PRIMARY KEY,SUPP_NAME varchar(50) NOT NULL,SUPP_CITY varchar(50) NOT NULL,SUPP_PHONE bigint);
insert into Supplier(SUPP_ID ,SUPP_NAME,SUPP_CITY,SUPP_PHONE ) values(1, "Rajesh Retails", "Delhi", "1234567890"); 
insert into Supplier(SUPP_ID ,SUPP_NAME,SUPP_CITY,SUPP_PHONE ) values(2, "Appario Ltd.", "Mumbai", "2589631470");
insert into Supplier(SUPP_ID ,SUPP_NAME,SUPP_CITY,SUPP_PHONE ) values(3, "Knome products", "Banglore", "9785462315"); 
insert into Supplier(SUPP_ID ,SUPP_NAME,SUPP_CITY,SUPP_PHONE ) values(4, "Bansal Retails", "Kochi", "8975463285");
insert into Supplier(SUPP_ID ,SUPP_NAME,SUPP_CITY,SUPP_PHONE ) values(5, "Mittal Ltd.",	"Lucknow","7898456532");
select * from Supplier;

Create table if not exists Customer(CUS_ID int(10) PRIMARY KEY,CUS_NAME varchar(50) NOT NULL,CUS_PHONE bigint,CUS_CITY varchar(50) NOT NULL,CUS_GENDER varchar(50) NOT NULL);
insert into Customer(CUS_ID ,CUS_NAME ,CUS_PHONE ,CUS_CITY ,CUS_GENDER ) values(1,	"AAKASH","9999999999","DELHI","M");
insert into Customer(CUS_ID ,CUS_NAME ,CUS_PHONE ,CUS_CITY ,CUS_GENDER ) values(2,	"AMAN",	"9785463215","NOIDA","M");
insert into Customer(CUS_ID ,CUS_NAME ,CUS_PHONE ,CUS_CITY ,CUS_GENDER ) values(3,	"NEHA",	"9999999999","MUMBAI","F");
insert into Customer(CUS_ID ,CUS_NAME ,CUS_PHONE ,CUS_CITY ,CUS_GENDER ) values(4,	"MEGHA","9994562399","KOLKATA","F");
insert into Customer(CUS_ID ,CUS_NAME ,CUS_PHONE ,CUS_CITY ,CUS_GENDER ) values(5,	"PULKIT","7895999999","LUCKNOW","M");
select * from Customer;

Create table if not exists Category(CAT_ID int(10) PRIMARY KEY, CAT_NAME varchar(50) NOT NULL);
insert into Category(CAT_ID ,CAT_NAME) values(1,"BOOKS");
insert into Category(CAT_ID ,CAT_NAME) values(2,"GAMES");
insert into Category(CAT_ID ,CAT_NAME) values(3,"GROCERIES");
insert into Category(CAT_ID ,CAT_NAME) values(4,"ELECTRONICS");
insert into Category(CAT_ID ,CAT_NAME) values(5,"CLOTHES");
select * from Category;

Create table if not exists Product(PRO_ID int(10) PRIMARY KEY,PRO_NAME varchar(50) NOT NULL,PRO_DESC varchar(255),CAT_ID int(10) NOT NULL);
insert into Product(PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values(1 ,"GTA V" ,"DFJDJFDJFDJFDJFJF" ,"2");
insert into Product(PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values(2 ,"TSHIRT" ,"DFDFJDFJDKFD" ,"5");
insert into Product(PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values(3 ,"ROG LAPTOP" ,"DFNTTNTNTERND" ,"4");
insert into Product(PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values(4 ,"OATS" ,"REURENTBTOTH" ,"3");
insert into Product(PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values(5 ,"HARRY POTTER" ,"NBEMCTHTJTH" ,"1");
select * from Product;

Create table if not exists ProductDetails(PROD_ID int(10) PRIMARY KEY,PRO_ID int(10),SUPP_ID int(10),PRICE FLOAT);
insert into ProductDetails(PROD_ID,PRO_ID,SUPP_ID,PRICE) values(1 ,1 ,2,1500);
insert into ProductDetails(PROD_ID,PRO_ID,SUPP_ID,PRICE) values(2 ,3 ,5 ,30000);
insert into ProductDetails(PROD_ID,PRO_ID,SUPP_ID,PRICE) values(3 ,5 ,1 ,3000);
insert into ProductDetails(PROD_ID,PRO_ID,SUPP_ID,PRICE) values(4 ,2 ,3 ,2500);
insert into ProductDetails(PROD_ID,PRO_ID,SUPP_ID,PRICE) values(5 ,4 ,1 ,1000);
select * from ProductDetails;

Create table if not exists Order_T(ORD_ID int(10) PRIMARY KEY ,ORD_AMOUNT FLOAT , ORD_DATE date ,CUS_ID int(10) ,PROD_ID int(10));
insert into Order_T(ORD_ID ,ORD_AMOUNT ,ORD_DATE ,CUS_ID ,PROD_ID) values(20 ,1500 ,"2021-10-12" ,3 ,5);
insert into Order_T(ORD_ID ,ORD_AMOUNT ,ORD_DATE ,CUS_ID ,PROD_ID) values(25 ,30500 ,"2021-09-16" ,5 ,2);
insert into Order_T(ORD_ID ,ORD_AMOUNT ,ORD_DATE ,CUS_ID ,PROD_ID) values(26 ,2000 ,"2021-10-05" ,1,1);
insert into Order_T(ORD_ID ,ORD_AMOUNT ,ORD_DATE ,CUS_ID ,PROD_ID) values(30 ,3500 ,"2021-08-16" ,4 ,3);
insert into Order_T(ORD_ID ,ORD_AMOUNT ,ORD_DATE ,CUS_ID ,PROD_ID) values(50 ,2000 ,"2021-10-06" ,2 ,1);
select * from Order_T;

Create table if not exists Rating(RAT_ID int(10),CUS_ID int(10),SUPP_ID int(10),RAT_RATSTARS FLOAT);
insert into Rating(RAT_ID,CUS_ID,SUPP_ID,RAT_RATSTARS) values(1 ,2 ,2 ,4);
insert into Rating(RAT_ID,CUS_ID,SUPP_ID,RAT_RATSTARS) values(2 ,3 ,4 ,3);
insert into Rating(RAT_ID,CUS_ID,SUPP_ID,RAT_RATSTARS) values(3 ,5 ,1 ,5);
insert into Rating(RAT_ID,CUS_ID,SUPP_ID,RAT_RATSTARS) values(4 ,1 ,3 ,2);
insert into Rating(RAT_ID,CUS_ID,SUPP_ID,RAT_RATSTARS) values(5 ,4 ,5 ,4);
select * from Rating;

-- 3)	Display the number of the customer group by their genders who have placed any order of amount greater than or equal to Rs.3000
select Customer.CUS_GENDER, count(Customer.CUS_GENDER) as count 
from Customer inner join Order_T on Customer.CUS_ID=Order_T.CUS_ID where Order_T.ORD_AMOUNT>=3000 group by Customer.CUS_GENDER;

-- 4)	Display all the orders along with the product name ordered by a customer having Customer_Id=2
select `Order_T`.*,Product.PRO_NAME from Order_T 
left join ProductDetails on  Order_T.PROD_ID=ProductDetails.PROD_ID 
left join Product on ProductDetails.PRO_ID=Product.PRO_ID
where `Order_T`.CUS_ID=2 ;

-- 5)	Display the Supplier details who can supply more than one product.
select Supplier.* from Supplier,ProductDetails 
where Supplier.SUPP_ID in ( 
	select ProductDetails.SUPP_ID from ProductDetails group by ProductDetails.SUPP_ID having count(ProductDetails.SUPP_ID)>1) 
group by Supplier.SUPP_ID;

-- 6)	Find the category of the product whose order amount is minimum
select Category.* ,min(Order_T.ORD_AMOUNT) amount
from Order_T 
inner join ProductDetails on Order_T.PROD_ID=ProductDetails.PROD_ID 
inner join Product on Product.PRO_ID=ProductDetails.PRO_ID 
inner join Category on Category.CAT_ID=Product.CAT_ID
group by Category.CAT_ID order by amount asc
limit 1;

-- 7)	Display the Id and Name of the Product ordered after “2021-10-05”.
select Product.PRO_ID,Product.PRO_NAME, Order_T.ORD_ID 
from Order_T 
inner join ProductDetails on Order_T.PROD_ID=ProductDetails.PROD_ID 
inner join Product on Product.PRO_ID=ProductDetails.PRO_ID
where Order_T.ORD_DATE >"2021-10-05";

-- 8)	Display customer name and gender whose names start or end with character 'A'
select CUS_NAME, CUS_GENDER from Customer where CUS_NAME like 'A%' union select CUS_NAME,CUS_GENDER from Customer where CUS_NAME like '%A';

-- 9)	Create a stored procedure to display the Rating for a Supplier 
-- if any along with the Verdict on that rating if any like if rating >4 
--  then “Genuine Supplier” if rating >2 “Average Supplier” else “Supplier should not be considered”.

DELIMITER //
CREATE PROCEDURE proc()
BEGIN
select Supplier.SUPP_ID, Supplier.SUPP_NAME,Rating.RAT_RATSTARS,
case 
	when Rating.RAT_RATSTARS>4 THEN 'GENUINE SUPPLIER'
	when Rating.RAT_RATSTARS>2 THEN 'AVERAGE SUPPLIER'
	ELSE 'Supplier should not be considered'
END AS verdict from Rating inner join Supplier on Supplier.SUPP_ID=Rating.SUPP_ID;
END //
DELIMITER ;


call proc();