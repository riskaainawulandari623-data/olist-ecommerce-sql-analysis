-- CUSTOMER GEOGRAPHY = which city have the most customers

SELECT
    COUNT(customer_unique_id) as total_customers,
    customer_city as city,
    customer_state as state
FROM `raw_dataset_BrazilianECommerce.customers`
GROUP BY city, state
ORDER BY total_customers DESC;
