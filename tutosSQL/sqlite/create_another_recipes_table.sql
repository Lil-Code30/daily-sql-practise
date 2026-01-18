-- SQLite

CREATE TABLE IF NOT EXISTS recipes (
   id INTEGER PRIMARY KEY AUTOINCREMENT,
   title VARCHAR(150) NOT NULL,
   slug VARCHAR(50) NOT NULL,
   content TEXT,
   duration SMALLINT,
   online BOOLEAN,
   created_at DATETIME
);


INSERT INTO recipes (title, slug, content, duration, online, created_at) VALUES
('Spaghetti Bolognese', 'spaghetti-bolognese', 'Rich meat sauce with tomatoes, herbs and pasta.', 45, TRUE, '2026-01-10 12:00:00'),
('Chicken Alfredo', 'chicken-alfredo', 'Creamy Alfredo sauce served with grilled chicken and fettuccine.', 30, TRUE, '2026-01-11 09:15:00'),
('Vegan Buddha Bowl', 'vegan-buddha-bowl', 'Colorful bowl with quinoa, veggies, avocado, and tahini dressing.', 25, TRUE, '2026-01-12 14:20:00'),
('Beef Tacos', 'beef-tacos', 'Seasoned ground beef served in warm tortillas with toppings.', 20, FALSE, '2026-01-13 18:00:00'),
('French Onion Soup', 'french-onion-soup', 'Caramelized onions simmered in broth, topped with melted cheese.', 60, TRUE, '2026-01-14 10:45:00'),
('Grilled Salmon', 'grilled-salmon', 'Fresh salmon fillet grilled with lemon butter.', 35, TRUE, '2026-01-15 12:30:00'),
('Pancakes', 'pancakes', 'Fluffy breakfast pancakes with maple syrup and berries.', 15, TRUE, '2026-01-16 08:05:00'),
('Thai Green Curry', 'thai-green-curry', 'Fragrant curry with coconut milk, chicken, and green chilies.', 50, FALSE, '2026-01-17 19:40:00'),
('Caesar Salad', 'caesar-salad', 'Romaine lettuce with creamy Caesar dressing, croutons, and parmesan.', 10, TRUE, '2026-01-18 11:10:00'),
('Chocolate Brownies', 'chocolate-brownies', 'Soft, fudgy brownies with rich dark chocolate.', 55, TRUE, '2026-01-19 16:55:00');
