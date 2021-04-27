INSERT INTO users (name, email, password)
VALUES
('Ruby Zhuang', 'hello@example.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('John Doe', 'john.doe@example.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Lorem Ipsum', 'lorem@ipsum.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url,cover_photo_url, cost_per_night, 
parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES
(1, 'Dream Mansion', 'description', 'thumbnail_url', 'cover_photo_url', 10000, 10, 10, 10, 'Canada', '21 Park Ln Cir', 'North York', 'ON', 'M3B 1Z8', FALSE),
(2, 'Luxury Cottage', 'description', 'thumbnail_url', 'cover_photo_url', 500, 2, 3, 4, 'Canada', '1 Niagara St', 'Niagara-on-the-Lake', 'ON', 'L0S 1X8', TRUE),
(3, 'Historic Boutique', 'description', 'thumbnail_url', 'cover_photo_url', 200, 1, 1, 1, 'Canada', '2 Boutique St', 'Vancouver', 'BC', 'V5Z 1E9', TRUE);

INSERT INTO reservations (guest_id, property_id, start_date, end_date)
VALUES 
(1, 1, '2018-09-11', '2018-09-26'),
(2, 2, '2019-01-04', '2019-02-01'),
(3, 3, '2021-10-01', '2021-10-14');

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES
(1, 1, 1, 5, 'message'),
(2, 2, 2, 4, 'message'),
(3, 3, 3, 2, 'message');
