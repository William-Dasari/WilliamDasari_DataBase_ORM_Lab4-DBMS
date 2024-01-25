/*Q8) Display customer name and gender whose names start or end with character 'A'.*/

select customer.CUSTOMER_NAME,customer.CUSTOMER_GENDER from 
customer where customer.CUSTOMER_NAME like 'A%' or customer.CUSTOMER_NAME like '%A';