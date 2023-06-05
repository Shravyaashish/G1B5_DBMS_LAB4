/*Question 7 :Find the least expensive product from each category and print 
the table with category id, name, product name and price of the product*/

select cat.cat_id, cat.cat_name, prod.pro_name, prod.pro_name from
category as cat inner join product as prod on cat.cat_id = prod.pro_id
inner join (select * from supplier_pricing group by pro_id having min (supp_price) as sp
 on prod.pro_id = sp.pro_id;
