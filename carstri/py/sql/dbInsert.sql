-- Insert data into car table
INSERT INTO car (year, model, gen, doorNum, seatNum, drive, fuel, body, horsePow, gearbox) VALUES
(1986, 'Toyota AE86 Sprinter Trueno', 'AE86', 2, 2, 'RWD', 'Gasoline', 'Coupe', 128, 'Manual'),
(1988, 'Nissan Silvia S13', 'S13', 2, 2, 'RWD', 'Gasoline', 'Coupe', 155, 'Manual'),
(1990, 'Honda Civic EG', 'EG', 2, 4, 'FWD', 'Gasoline', 'Hatchback', 125, 'Manual'),
(1992, 'Mazda RX-7 FC3S', 'FC3S', 2, 2, 'RWD', 'Gasoline', 'Coupe', 200, 'Manual'),
(1994, 'Nissan Skyline GT-R R32', 'R32', 2, 4, 'AWD', 'Gasoline', 'Coupe', 280, 'Manual'),
(1995, 'Subaru Impreza WRX', 'GC8', 2, 4, 'AWD', 'Gasoline', 'Sedan', 250, 'Manual'),
(1997, 'Toyota Supra MK4', 'A80', 2, 2, 'RWD', 'Gasoline', 'Coupe', 276, 'Automatic'),
(1998, 'Honda Integra Type R', 'DC2', 2, 2, 'FWD', 'Gasoline', 'Coupe', 197, 'Manual');

-- Insert data into image table
INSERT INTO image (name, isTitle) VALUES
('ae86_trueno.jpg', 0),
('silvia_s13.jpg', 0),
('civic_eg.jpg', 0),
('rx7_fc3s.jpg', 0),
('skyline_r32.jpg', 0),
('impreza_wrx.jpg', 0),
('supra_mk4.jpg', 0),
('integra_dc2.jpg', 0);

-- Insert data into advert table
INSERT INTO advert (carID, title, price, description, type, milage, country, registration, color, colorType) VALUES
(1, 'Perfect Condition AE86 for Sale', 15000.00, 'Well-maintained with original parts.', 'used', 120000, 'Japan', 'ABC123', 'White', 'Solid'),
(2, '1992 Nissan Silvia S13', 12000.00, 'Drift-ready, with mods.', 'used', 80000, 'Japan', 'DEF456', 'Red', 'Metallic'),
(3, '1990 Honda Civic EG - Project Car', 8000.00, 'Great base for a project.', 'used', 140000, 'Japan', 'GHI789', 'Green', 'Solid'),
(4, 'Mazda RX-7 FC3S for Sale', 22000.00, 'Low mileage and well-preserved.', 'used', 50000, 'Japan', 'JKL012', 'Blue', 'Solid'),
(5, 'Nissan Skyline GT-R R32', 40000.00, 'Iconic model with a rich history.', 'used', 60000, 'Japan', 'MNO345', 'Black', 'Solid'),
(6, '1995 Subaru Impreza WRX - Rally Ready', 20000.00, 'Rally-spec modifications included.', 'used', 70000, 'Japan', 'PQR678', 'Yellow', 'Metallic'),
(7, 'Toyota Supra MK4 with Turbo', 55000.00, 'Modified with turbo and new parts.', 'used', 40000, 'Japan', 'STU901', 'White', 'Solid'),
(8, 'Honda Integra Type R', 30000.00, 'Excellent condition, highly sought after.', 'used', 45000, 'Japan', 'VWX234', 'Black', 'Solid');

-- Insert data into advertConImage table
INSERT INTO advertConImage (imageID, advertID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

-- Insert data into user table
INSERT INTO user (mail, pass, name) VALUES
('user1@example.com', 'password123', 'John Doe'),
('user2@example.com', 'password123', 'Jane Smith'),
('user3@example.com', 'password123', 'Sam Brown'),
('user4@example.com', 'password123', 'Alice Johnson');

-- Insert data into advertConUser table
INSERT INTO advertConUser (userID, advertID) VALUES
(1, 1),
(2, 2),
(3, 3),
(1, 4),
(4, 5),
(2, 6),
(3, 7),
(1, 8);

-- Insert data into follow table
INSERT INTO follow (userID, advertID) VALUES
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(1, 6),
(2, 7),
(3, 8);