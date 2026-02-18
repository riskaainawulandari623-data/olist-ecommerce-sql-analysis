-- AVG INSTALLMENTS = ee what the average instalment is if a customer buys an expensive product. 

SELECT 
      payment_installments, 
      AVG(payment_value) AS avg_payment_value,
      COUNT(order_id) AS total_order
FROM `raw_dataset_BrazilianECommerce.payments`
WHERE payment_type = 'credit_card'
GROUP BY payment_installments
ORDER BY payment_installments ASC;
