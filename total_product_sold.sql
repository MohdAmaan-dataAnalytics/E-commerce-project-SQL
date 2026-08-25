USE ecommerce;
SELECT p.product_name,
	SUM(oi.quantity) AS total_sold
FROM order_item oi
JOIN products p ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

