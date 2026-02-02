-- clients infos

INSERT INTO clients (name) VALUES
('Alice Dupont'),
('Bob Martin'),
('Claire Bernard'),
('David Moreau'),
('Emma Leroy'),
('François Petit'),
('Grace Robert'),
('Hugo Thomas'),
('Inès Durand'),
('Julien Lefevre');

-- products data
INSERT INTO products (name, prix) VALUES
('Laptop', 899.99),
('Mouse', 19.99),
('Keyboard', 49.99),
('Monitor 24"', 199.99),
('USB Cable', 9.99),
('External Hard Drive', 89.99),
('Webcam', 59.99),
('Headphones', 79.99),
('Smartphone', 699.99),
('Tablet', 399.99),
('Printer', 149.99),
('Desk Lamp', 29.99),
('Office Chair', 249.99),
('Router', 99.99),
('Power Bank', 39.99),
('Microphone', 129.99),
('Speakers', 89.99),
('SSD 1TB', 159.99),
('Graphics Card', 499.99),
('Laptop Stand', 34.99);


-- commandes
INSERT INTO commandes (client_id, date_commande) VALUES
(1, '2025-01-02'),
(2, '2025-01-03'),
(3, '2025-01-04'),
(4, '2025-01-05'),
(5, '2025-01-06'),
(6, '2025-01-07'),
(7, '2025-01-08'),
(8, '2025-01-09'),
(9, '2025-01-10'),
(10, '2025-01-11'),
(1, '2025-01-12'),
(2, '2025-01-13'),
(3, '2025-01-14'),
(4, '2025-01-15'),
(5, '2025-01-16'),
(6, '2025-01-17'),
(7, '2025-01-18'),
(8, '2025-01-19'),
(9, '2025-01-20'),
(10, '2025-01-21');


-- products in each commandes

INSERT INTO commandeProduct (commande_id, product_id, quantity) VALUES
(1, 1, 1),
(1, 2, 2),

(2, 3, 1),
(2, 4, 1),

(3, 5, 3),
(3, 6, 1),

(4, 7, 1),
(4, 8, 2),

(5, 9, 1),

(6, 10, 1),
(6, 2, 1),

(7, 11, 1),
(7, 12, 2),

(8, 13, 1),

(9, 14, 1),
(9, 15, 2),

(10, 16, 1),

(11, 17, 2),

(12, 18, 1),
(12, 5, 2),

(13, 19, 1),

(14, 20, 1),
(14, 2, 1),

(15, 1, 1),
(15, 3, 1),

(16, 6, 1),

(17, 8, 1),
(17, 12, 1),

(18, 9, 1),

(19, 10, 2),

(20, 4, 1),
(20, 5, 2);
