INSERT INTO transaction (client_id, product_id, date, quantity, unit_price, total_amount) VALUES
(1, 22, "2026-01-26", 5, 2.40, 5 * 2.40);

INSERT INTO transaction (client_id, product_id, date, quantity, unit_price, total_amount)
SELECT 1, p.product_id, "2026-01-26", 4, p.price, 4 * p.price FROM products p 
WHERE p.product_id = 28;