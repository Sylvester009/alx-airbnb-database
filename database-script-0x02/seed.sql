INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('11111111-1111-1111', 'Alice', 'Johnson', 'alice@example.com', 'hash1', '555-1111', 'host'),
('22222222-2222-2222', 'Bob', 'Smith', 'bob@example.com', 'hash2', '555-2222', 'guest'),
('33333333-3333-3333', 'Charlie', 'Admin', 'admin@example.com', 'hash3', NULL, 'admin');

INSERT INTO properties (property_id, host_id, name, description, location, price_per_night)
VALUES
('aaaaaaa1-aaaa-aaaa', '11111111-1111-1111',
    'Cozy Apartment', 'A lovely 2-bedroom apartment near the beach.', 'Miami, FL', 120.00),

('aaaaaaa2-aaaa-aaaa', '11111111-1111-1111',
    'Mountain Cabin', 'A quiet cabin surrounded by nature.', 'Denver, CO', 200.00);


INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1', 'aaaaaaa1-aaaa-aaaa',
    '22222222-2222-2222', '2025-01-10', '2025-01-15', 600.00, 'confirmed'),

('bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2',
    '22222222-2222-2222', '2025-02-05', '2025-02-09', 800.00, 'pending');


INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES
('ccccccc1-cccc-cccc-cccc-ccccccccccc1', 'bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1',
    600.00, 'credit_card'),

('ccccccc2-cccc-cccc-cccc-ccccccccccc2', 'bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2',
    800.00, 'paypal');


INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES
('ddddddd1-dddd-dddd-dddd-ddddddddddd1', 'aaaaaaa1-aaaa-aaaa',
    '22222222-2222-2222', 5, 'Amazing place, very clean and cozy!'),

('ddddddd2-dddd-dddd-dddd-ddddddddddd2', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2',
    '22222222-2222-2222', 4, 'Great cabin, beautiful views!');


INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES
('eeeeeee1-eeee-eeee-eeee-eeeeeeeeeee1',
    '22222222-2222-2222',  -- Bob (guest)
    '11111111-1111-1111',  -- Alice (host)
    'Hi Alice, is the apartment available for early check-in?'),

('eeeeeee2-eeee-eeee-eeee-eeeeeeeeeee2',
    '11111111-1111-1111',  -- Alice
    '22222222-2222-2222',  -- Bob
    'Hi Bob! Yes, early check-in is possible.');
