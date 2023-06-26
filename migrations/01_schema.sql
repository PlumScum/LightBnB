INSERT INTO users (name, email, password)
VALUES ('Riff Raff', 'RandR@frankensteinplace.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Jake Sisko', 'WithTheProphets@ds9.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Stevie Budd', 'guests@rosebudmotel.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Janet Weiss', 'wifetobe@spoiledsweetdamsel.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Elim Garak', 'garak@simple-tailor.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Moira Rose', 'VBlake@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES (1, 'Frankenstein Place', 'description', 'https://img2.looper.com/img/gallery/the-untold-truth-of-the-rocky-horror-picture-show/frank-n-furters-castle-is-a-luxury-hotel-1601416777.jpg', 'https://img2.looper.com/img/gallery/the-untold-truth-of-the-rocky-horror-picture-show/frank-n-furters-castle-is-a-luxury-hotel-1601416777.jpg', 0, 15, 5, 20, 'United States', '123 Frankenstein Place Way', 'Middle-of-nowhere', 'MA', '90210', true),
(2, 'Deep Space Nine', 'description', 'https://www.wired.com/wp-content/uploads/2015/05/STDS9.jpg', 'https://www.wired.com/wp-content/uploads/2015/05/STDS9.jpg', 0, 50, 5100, 5000, 'Alpha Quadrant', '123 Section D', 'Epsilon', 'Denorios belt', '10243.223', true),
(3, 'Rosebud Motel', 'description', 'https://cdn.totallythebomb.com/wp-content/uploads/2020/12/rosebud.jpg', 'https://cdn.totallythebomb.com/wp-content/uploads/2020/12/rosebud.jpg', 20, 10, 10, 10, 'Canada', '123 Small Town Road', 'Schitts Creek', 'Ontario', 'H0H 0H0', true);

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES ('1978-10-31', '1978-11-15', 1, 4),
('3500-06-23', '3500-07-30', 2, 5),
('2017-07-05', '2017-07-09', 3, 6);

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (4, 1, 1, 3, 'message'),
(5, 2, 2, 5, 'message'),
(6, 3, 3, 4, 'message');