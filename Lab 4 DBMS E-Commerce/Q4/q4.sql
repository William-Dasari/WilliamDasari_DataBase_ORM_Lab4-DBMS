/*Q4) Display the total number of customers based on gender who have placed orders of worth at least Rs.3000.*/

select count(t2.CUSTOMER_GENDER) as NoOfCustomers, t2.CUSTOMER_GENDER as Gender from 
(
	select t1.CUSTOMER_ID, t1.CUSTOMER_GENDER, t1.ORDER_AMOUNT, t1.CUSTOMER_NAME from 
	(
		select o.*, c.CUSTOMER_GENDER, c.CUSTOMER_NAME from 
		`order` as o inner join customer as c ON c.CUSTOMER_ID=o.CUSTOMER_ID HAVING o.ORDER_AMOUNT>=3000
	) AS t1 
) AS t2 GROUP BY t2.CUSTOMER_GENDER;