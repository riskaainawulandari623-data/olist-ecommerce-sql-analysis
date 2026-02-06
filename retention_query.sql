--RETENTION ANALYSIS

SELECT customer_id, order_purchase_timestamp,

--take the first date of purchase per customer
FIRST_VALUE(order_purchase_timestamp) 
  OVER(PARTITION BY customer_id ORDER BY order_purchase_timestamp ASC) AS first_purchase_date,

--calculating the number of days since the first purchase
TIMESTAMP_DIFF(order_purchase_timestamp,  
          FIRST_VALUE(order_purchase_timestamp)OVER(PARTITION BY customer_id ORDER BY order_purchase_timestamp ASC), 
          DAY) as days_since_first_join
FROM `raw_dataset_BrazilianECommerce.orders`
LIMIT 100;
