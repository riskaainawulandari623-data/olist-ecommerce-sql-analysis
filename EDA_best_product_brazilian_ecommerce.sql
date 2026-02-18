-- BEST PRODUCT = best-selling product categories 

SELECT 
      COALESCE(p.product_category_name, 'others') as category,
      COUNT(oi.product_id) as total_items_sold,
      SUM(oi.price) as revenue     
FROM `raw_dataset_BrazilianECommerce.order_items` as oi
JOIN `raw_dataset_BrazilianECommerce.products` as p
ON oi.product_id = p.product_id
GROUP BY category
ORDER BY revenue DESC;
