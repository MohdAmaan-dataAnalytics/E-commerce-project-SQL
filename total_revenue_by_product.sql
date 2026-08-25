USE ecommerce;
SELECT p.product_name,
	SUM(oi.quantity * price) AS total_revanue
FROM order_item oi
JOIN products p ON oi.product_id = p.product_id
JOIN orders o ON oi.order_id = o.order_id
WHERE order_status = 'delivered'
GROUP BY p.product_name
ORDER BY total_revanue DESC;

