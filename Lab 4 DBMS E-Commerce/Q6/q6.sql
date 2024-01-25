/*Q6) Display the Supplier details of who is supplying more than one product.*/

select supplier.* from supplier where supplier.SUPPLIER_ID in 
	(select SUPPLIER_ID from supplier_pricing group by SUPPLIER_ID having 
	count(SUPPLIER_ID)>1) 
group by supplier.SUPPLIER_ID;