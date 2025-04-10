SELECT c.customer_id, c.name, 
       SUM(p.amount) AS total_payment, 
       o.status AS order_status,
       (SELECT SUM(p2.amount) 
        FROM payments p2 
        JOIN orders o2 ON p2.order_id = o2.order_id
        WHERE o2.customer_id = c.customer_id) AS total_revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON o.order_id = p.order_id
WHERE o.status IN ('shipped', 'delivered')
GROUP BY c.customer_id, c.name, o.status;
