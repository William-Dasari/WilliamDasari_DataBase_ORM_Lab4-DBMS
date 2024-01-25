/*Q7) Find the least expensive product from each category and print the table with category id, name, and price of the product*/

select category.CATEGORY_ID,category.CATEGORY_NAME, min(t3.min_price) as Min_Price from category inner join
(select product.CATEGORY_ID, product.PRODUCT_NAME, t2.* from product inner join  
(select PRODUCT_ID, min(SUPPLIER_PRICE) as Min_Price from supplier_pricing group by PRODUCT_ID) 
as t2 where t2.PRODUCT_ID = product.PRODUCT_ID)
as t3 where t3.CATEGORY_ID = category.CATEGORY_ID group by t3.CATEGORY_ID;