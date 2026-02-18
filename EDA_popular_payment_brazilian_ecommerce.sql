-- POPULAR PAYMENT = the most commonly used payment method

SELECT 
    COUNT(payment_type) as total_payment, 
    payment_type
FROM `raw_dataset_BrazilianECommerce.payments`
GROUP BY payment_type
ORDER BY total_payment DESC
