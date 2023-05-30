CREATE TABLE suppliers_pricing(
PRICING_ID	INT NOT NULL primary key,
PRO_ID	INT NOT NULL ,
SUPP_ID	INT NOT NULL,
SUPP_PRICE	INT NOT NULL,
foreign key (PRO_ID) references products(PRO_ID),
foreign key (SUPP_ID) references supplier(SUPP_ID))

INSERT INTO suppliers_pricing VALUES (1	,	1	,		2,	1500)
INSERT INTO suppliers_pricing VALUES(2	,	3	,		5,	30000)
INSERT INTO suppliers_pricing VALUES(3	,	5	,		1,	3000)
INSERT INTO suppliers_pricing VALUES(4	,	2	,		3,	2500)
INSERT INTO suppliers_pricing VALUES(5	,	4	,		1,	1000)
select * from suppliers_pricing