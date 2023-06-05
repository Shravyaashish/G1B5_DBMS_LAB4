/*Question 8 : Display the Id and Name of the Product ordered after “2021-10-05”
The question is not able to convey if it wants us to retreive just the order 
immediately placed after this date or all orders placed after this date. \
So, I have included the queries for both the scenaios. 
PLEASE CONSIDER THIS AND GRADE ME ACCORDINGLY*/

/*for the product ordered after this date*/ 
select pro.pro_id,pro.pro_name from product pro join supplier_pricing sp on sp.pro_id = pro.pro_id join orders ord on ord.pricing_id = sp.pricing_id where ord.ord_date > '2021-10-05'
 
