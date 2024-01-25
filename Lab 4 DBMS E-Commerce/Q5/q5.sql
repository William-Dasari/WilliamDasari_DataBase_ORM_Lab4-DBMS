/*Q5) Display all the orders along with product name ordered by a customer having Customer_Id=2*/

select product.PRODUCT_NAME, `order`.* from `order`, supplier_pricing, product 
where `order`.CUSTOMER_ID=2 and 
`order`.PRICING_ID=supplier_pricing.PRODUCT_ID and supplier_pricing.PRODUCT_ID=product.PRODUCT_ID;