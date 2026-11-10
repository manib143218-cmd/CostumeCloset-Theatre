-- Sample actors
INSERT OR IGNORE INTO actors (actor_id, name, email, phone, address)
VALUES
(1, 'Asha', 'asha@example.com', '9876543210', 'Hyderabad'),
(2, 'Ravi', 'ravi@example.com', '9876543211', 'Kurnool'),
(3, 'Priya', 'priya@example.com', '9876543212', 'Bangalore');

-- Sample costumes
INSERT OR IGNORE INTO costumes
(costume_id, name, era, category, size, description, price_per_day, availability)
VALUES
(1, 'Royal King Costume', 'Medieval', 'Royal', 'L', 'Traditional king outfit', 800, 'Available'),
(2, 'Victorian Dress', 'Victorian', 'Historical', 'M', 'Classic Victorian gown', 600, 'Available'),
(3, 'Warrior Armour', 'Ancient', 'Warrior', 'XL', 'Traditional warrior outfit', 1000, 'Available');