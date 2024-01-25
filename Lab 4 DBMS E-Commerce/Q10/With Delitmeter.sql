CREATE DEFINER=`root`@`localhost` PROCEDURE `Rating`()
BEGIN
select report.SUPPLIER_ID,report.SUPPLIER_NAME,report.Average,
CASE
	WHEN report.Average =5 THEN 'Excellent Service'
    	WHEN report.Average >4 THEN 'Good Service'
    	WHEN report.Average >2 THEN 'Average Service'
    	ELSE 'Poor Service'
END AS Type_of_Service from 

(select final.SUPPLIER_ID, supplier.SUPPLIER_NAME, final.Average from
(select test2.SUPPLIER_ID, sum(test2.RATING_RATSTARS)/count(test2.RATING_RATSTARS) as Average from
(select supplier_pricing.SUPPLIER_ID, test.ORDER_ID, test.RATING_RATSTARS from supplier_pricing inner join
(select `order`.PRICING_ID, rating.ORDER_ID, rating.RATING_RATSTARS from `order` inner join rating on
 rating.ORDER_ID = `order`.ORDER_ID ) as test
on test.PRICING_ID = supplier_pricing.PRICING_ID) 
as test2 group by supplier_pricing.SUPPLIER_ID) 
as final inner join supplier where final.SUPPLIER_ID = supplier.SUPPLIER_ID) as report;
END