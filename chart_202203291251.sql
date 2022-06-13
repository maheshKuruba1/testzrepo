CREATE PROCEDURE "dbo"."INSERTCUSTOMERSALES" AS
    BEGIN
    SET NOCOUNT ON;
    INSERT INTO "CUSTOMERORDER"."dbo"."CUSTOMERSALES" (CustomerID,FULL_NAME,PRODUCT_NAME,ORDER_STATUS,ORDER_DATETIME,Sales)
 select customers.Customer_ID,customers.FULL_NAME,PRODUCT_NAME,ORDER_STATUS,ORDER_DATETIME,(accounts1.user_id*accounts1.user_id)  
 from "CUSTOMERORDER"."dbo"."ORDERS" inner join "CUSTOMERORDER"."dbo"."accounts1" on (ORDERS.order_id=accounts1.user_id)
 inner join "CUSTOMERORDER"."dbo"."CUSTOMERS" on (CUSTOMERS.customer_id=ORDERS.customer_id)
 inner join "CUSTOMERORDER"."dbo"."PRODUCTS"  on (accounts1.user_id=PRODUCTS.PRODUCT_ID);
COMMIT;               
END;