CREATE TABLE IF NOT EXISTS `order` (
ORDER_ID INT NOT NULL,
ORDER_AMOUNT INT NOT NULL,
ORDER_DATE DATE,
CUSTOMER_ID INT NOT NULL,
PRICING_ID INT NOT NULL,
PRIMARY KEY (ORDER_ID),
FOREIGN KEY (CUSTOMER_ID) REFERENCES customer(CUSTOMER_ID),
FOREIGN KEY (PRICING_ID) REFERENCES supplier_pricing(PRICING_ID)
);