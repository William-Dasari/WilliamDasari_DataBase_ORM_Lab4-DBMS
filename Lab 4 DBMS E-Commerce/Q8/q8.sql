/*Q8) Display the Id and Name of the Product ordered after “2021-10-05”. */

select product.PRODUCT_ID,product.PRODUCT_NAME from 
`order` inner join supplier_pricing on 
supplier_pricing.PRICING_ID=`order`.PRICING_ID inner join product on
 product.PRODUCT_ID=supplier_pricing.PRODUCT_ID where `order`.ORDER_DATE>"2021-10-05";