-- TRENDS = to find out which month has the highest sales

SELECT 
    DATE_TRUNC(SAFE.PARSE_DATE('%Y-%m-%d', SUBSTR(CAST(order_purchase_timestamp AS STRING), 1, 10)), MONTH) AS order_month, 
    COUNT(DISTINCT order_id) AS total_orders,                       
    SUM(SAFE_CAST(price as FLOAT64)) AS total_revenue,              
FROM `raw_dataset_BrazilianECommerce.orders`
JOIN `raw_dataset_BrazilianECommerce.order_items` USING (order_id)
WHERE order_status = 'delivered'
GROUP BY order_month
ORDER BY order_month ASC;
