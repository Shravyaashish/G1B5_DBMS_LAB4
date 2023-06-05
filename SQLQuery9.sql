/*Display the number of the customer group by their genders who have placed any order of amount greater than or equal to Rs.3000 */
select count(*), cust.cus_gender from customer cust
	join
	orders as ord on ord.cus_id = cust.cus_id 
	where 
	ord.ord_amount >= 3000 group by cust.cus_gender;

