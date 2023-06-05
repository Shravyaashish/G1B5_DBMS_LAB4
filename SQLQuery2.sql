/*Table structure for table category*/
CREATE TABLE  category (
  CAT_ID int,
  CAT_NAME varchar(20) NOT NULL,
  PRIMARY KEY (CAT_ID)
);

/*Table structure for table product*/
CREATE TABLE  product (
  PRO_ID int primary key,
  PRO_NAME varchar(20) NOT NULL ,
  PRO_DESC varchar(60),
  CAT_ID int,
  foreign key(CAT_ID) references category(CAT_ID)
);

/*Table structure for table supplier*/
CREATE TABLE  supplier (
  SUPP_ID int primary key,
  SUPP_NAME varchar(50) not null,
  SUPP_CITY varchar(50) not null,
  SUPP_PHONE varchar(50) not null
);

/*Table structure for table supplier_pricing*/
CREATE TABLE  supplier_pricing (
  PRICING_ID int primary key,
  PRO_ID int,
  SUPP_ID int,
  SUPP_PRICE int default 0,
  foreign key(PRO_ID) references product(PRO_ID),
   foreign key(SUPP_ID) references supplier(SUPP_ID)
);

/*Table structure for table customer*/
CREATE TABLE  customer (
  CUS_ID int primary key,
  CUS_NAME VARCHAR(20) NOT NULL,
  CUS_PHONE VARCHAR(10) NOT NULL,
  CUS_CITY VARCHAR(30) NOT NULL,
  CUS_GENDER char
);

/*Table structure for table orders*/

CREATE TABLE  orders (
  ORD_ID int primary key,
  ORD_DATE DATE NOT NULL,
  CUS_ID INT,
  PRICING_ID INT,
 foreign key  (CUS_ID) references customer (CUS_ID),
  foreign key  (PRICING_ID)references supplier_pricing (PRICING_ID)
);

/*Table structure for table rating*/
CREATE TABLE rating (
  RAT_ID INT primary key,
  ORD_ID INT,
  RAT_RATSTARS	INT NOT NULL,
  foreign key(ORD_ID) references orders(ORD_ID)
);





