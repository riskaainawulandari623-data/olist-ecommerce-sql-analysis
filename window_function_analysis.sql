--QUERY ecommerce analysis

--combining datasets with JOIN clauses 
WITH Master_Sales AS(
  SELECT
    o.order_purchase_timestamp AS tanggal, 
    p.product_category_name AS kategori, 
    oi.price AS harga_jual
    FROM `raw_dataset_BrazilianECommerce.orders` o
    JOIN `raw_dataset_BrazilianECommerce.order_items` oi 
        ON o.order_id = oi.order_id
    JOIN `raw_dataset_BrazilianECommerce.products` p
        ON oi.product_id = p.product_id
    WHERE o.order_purchase_timestamp >= '2017-01-01' AND o.order_purchase_timestamp <= '2017-03-01'
    )

  SELECT tanggal, kategori, harga_jual,
--ranking of products with the highest selling price 
  DENSE_RANK() OVER(PARTITION BY kategori ORDER BY harga_jual DESC) as ranking_harga,
  
--sales accumulation for each category
  SUM(harga_jual) OVER(PARTITION BY kategori ORDER BY tanggal DESC) as akumulasi_penjualan
FROM Master_Sales
LIMIT 10;
