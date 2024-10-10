-- Insert into car table (10 JDM cars from 1985 to 1997)
INSERT INTO car (year, brand, model, gen) VALUES (1985, 'Toyota', 'AE86', '1983-1987');
INSERT INTO car (year, brand, model, gen) VALUES (1986, 'Nissan', 'Skyline R31', '1986-1990');
INSERT INTO car (year, brand, model, gen) VALUES (1989, 'Mazda', 'RX-7 FC', '1985-1992');
INSERT INTO car (year, brand, model, gen) VALUES (1992, 'Honda', 'NSX', '1990-2005');
INSERT INTO car (year, brand, model, gen) VALUES (1993, 'Nissan', 'Silvia S13', '1988-1994');
INSERT INTO car (year, brand, model, gen) VALUES (1994, 'Toyota', 'Supra MK4', '1993-2002');
INSERT INTO car (year, brand, model, gen) VALUES (1995, 'Mitsubishi', '3000GT', '1990-2001');
INSERT INTO car (year, brand, model, gen) VALUES (1996, 'Subaru', 'Impreza WRX', '1992-2000');
INSERT INTO car (year, brand, model, gen) VALUES (1997, 'Nissan', 'Skyline R33', '1993-1998');
INSERT INTO car (year, brand, model, gen) VALUES (1997, 'Honda', 'Civic EK9', '1996-2000');

-- Insert into user table (3 users)
INSERT INTO user (mail, pass, name) VALUES ('user1@example.com', 'password1', 'John Doe');
INSERT INTO user (mail, pass, name) VALUES ('user2@example.com', 'password2', 'Jane Smith');
INSERT INTO user (mail, pass, name) VALUES ('user3@example.com', 'password3', 'Alex Johnson');

-- Insert into advert table (20 adverts related to 10 cars)
INSERT INTO advert (carID, title, price, description, type, milage, country, registration, color, colorType, doorNum, seatNum, drive, fuel, body, horsePow, gearbox, vin, aso)
VALUES (1, 'Toyota AE86 - Classic Drift Car', 15000.00, 'Classic drift car in great condition.', 'used', 125000, 'Japan', '1986-TDRIFT', 'White', 'Solid', 2, 4, 'RWD', 'Gasoline', 'Coupe', 120, 'Manual', 123456789, 0);
INSERT INTO advert (carID, title, price, description, type, milage, country, registration, color, colorType, doorNum, seatNum, drive, fuel, body, horsePow, gearbox, vin, aso)
VALUES (1, 'Toyota AE86 - Perfect for Drifting', 15500.00, 'A perfect AE86 for drifting and racing enthusiasts.', 'used', 120000, 'Japan', '1986-DRFT', 'Red', 'Solid', 2, 4, 'RWD', 'Gasoline', 'Coupe', 120, 'Manual', 123456788, 0);
INSERT INTO advert (carID, title, price, description, type, milage, country, registration, color, colorType, doorNum, seatNum, drive, fuel, body, horsePow, gearbox, vin, aso)
VALUES (2, 'Nissan Skyline R31 - Rare Find', 25000.00, 'Rare Skyline R31, well-maintained.', 'used', 90000, 'Japan', '1987-RSKY', 'Silver', 'Metallic', 4, 5, 'RWD', 'Gasoline', 'Sedan', 210, 'Manual', 987654321, 0);
INSERT INTO advert (carID, title, price, description, type, milage, country, registration, color, colorType, doorNum, seatNum, drive, fuel, body, horsePow, gearbox, vin, aso)
VALUES (2, 'Nissan Skyline R31 GT-R', 27000.00, 'Iconic R31 GT-R with upgraded turbo.', 'used', 95000, 'Japan', '1987-GTR', 'Black', 'Metallic', 4, 5, 'RWD', 'Gasoline', 'Sedan', 230, 'Manual', 987654322, 0);
INSERT INTO advert (carID, title, price, description, type, milage, country, registration, color, colorType, doorNum, seatNum, drive, fuel, body, horsePow, gearbox, vin, aso)
VALUES (3, 'Mazda RX-7 FC - Rotary Power', 20000.00, 'Rotary engine sports car with great handling.', 'used', 85000, 'Japan', '1989-RX7', 'Red', 'Solid', 2, 2, 'RWD', 'Gasoline', 'Coupe', 160, 'Manual', 456789123, 0);
INSERT INTO advert (carID, title, price, description, type, milage, country, registration, color, colorType, doorNum, seatNum, drive, fuel, body, horsePow, gearbox, vin, aso)
VALUES (3, 'Mazda RX-7 FC - Tuned Edition', 22000.00, 'Tuned RX-7 with amazing power and performance.', 'used', 80000, 'Japan', '1989-TUNED', 'Yellow', 'Solid', 2, 2, 'RWD', 'Gasoline', 'Coupe', 180, 'Manual', 456789124, 0);
INSERT INTO advert (carID, title, price, description, type, milage, country, registration, color, colorType, doorNum, seatNum, drive, fuel, body, horsePow, gearbox, vin, aso)
VALUES (4, 'Honda NSX - Legendary Sports Car', 60000.00, 'The legendary NSX in pristine condition.', 'used', 70000, 'Japan', '1992-NSX', 'Yellow', 'Solid', 2, 2, 'RWD', 'Gasoline', 'Coupe', 270, 'Automatic', 111111111, 0);
INSERT INTO advert (carID, title, price, description, type, milage, country, registration, color, colorType, doorNum, seatNum, drive, fuel, body, horsePow, gearbox, vin, aso)
VALUES (5, 'Nissan Silvia S13 - Drift Ready', 12000.00, 'Great S13 with drift modifications.', 'used', 130000, 'Japan', '1993-S13', 'White', 'Solid', 2, 4, 'RWD', 'Gasoline', 'Coupe', 180, 'Manual', 222222222, 0);
INSERT INTO advert (carID, title, price, description, type, milage, country, registration, color, colorType, doorNum, seatNum, drive, fuel, body, horsePow, gearbox, vin, aso)
VALUES (5, 'Nissan Silvia S13 - Well Maintained', 13000.00, 'Well maintained Silvia, perfect for drift events.', 'used', 125000, 'Japan', '1993-WELL', 'Blue', 'Solid', 2, 4, 'RWD', 'Gasoline', 'Coupe', 200, 'Manual', 222222223, 0);
INSERT INTO advert (carID, title, price, description, type, milage, country, registration, color, colorType, doorNum, seatNum, drive, fuel, body, horsePow, gearbox, vin, aso)
VALUES (6, 'Toyota Supra MK4 - Iconic Performance', 55000.00, 'Iconic MK4 Supra with performance upgrades.', 'used', 90000, 'Japan', '1994-SUPRA', 'Red', 'Solid', 2, 2, 'RWD', 'Gasoline', 'Coupe', 320, 'Automatic', 333333333, 0);
INSERT INTO advert (carID, title, price, description, type, milage, country, registration, color, colorType, doorNum, seatNum, drive, fuel, body, horsePow, gearbox, vin, aso)
VALUES (7, 'Mitsubishi 3000GT - Twin Turbo', 35000.00, 'Twin turbo 3000GT, great for racing.', 'used', 80000, 'Japan', '1995-3000GT', 'Black', 'Solid', 2, 2, 'AWD', 'Gasoline', 'Coupe', 300, 'Manual', 444444444, 0);
INSERT INTO advert (carID, title, price, description, type, milage, country, registration, color, colorType, doorNum, seatNum, drive, fuel, body, horsePow, gearbox, vin, aso)
VALUES (8, 'Subaru Impreza WRX - Rally Inspired', 30000.00, 'Rally-inspired WRX in great shape.', 'used', 70000, 'Japan', '1996-WRX', 'Blue', 'Solid', 4, 5, 'AWD', 'Gasoline', 'Sedan', 240, 'Manual', 555555555, 0);
INSERT INTO advert (carID, title, price, description, type, milage, country, registration, color, colorType, doorNum, seatNum, drive, fuel, body, horsePow, gearbox, vin, aso)
VALUES (9, 'Nissan Skyline R33 - Performance Machine', 45000.00, 'R33 with upgraded turbo and performance parts.', 'used', 85000, 'Japan', '1997-R33', 'Silver', 'Metallic', 4, 5, 'RWD', 'Gasoline', 'Sedan', 280, 'Manual', 666666666, 0);
INSERT INTO advert (carID, title, price, description, type, milage, country, registration, color, colorType, doorNum, seatNum, drive, fuel, body, horsePow, gearbox, vin, aso)
VALUES (10, 'Honda Civic EK9 - JDM Legend', 20000.00, 'JDM legend, perfect for collectors.', 'used', 95000, 'Japan', '1997-EK9', 'Green', 'Solid', 2, 4, 'FWD', 'Gasoline', 'Hatchback', 170, 'Manual', 777777777, 0);
INSERT INTO advert (carID, title, price, description, type, milage, country, registration, color, colorType, doorNum, seatNum, drive, fuel, body, horsePow, gearbox, vin, aso)
VALUES (10, 'Honda Civic EK9 - Track Ready', 22000.00, 'Track-ready EK9 with full modifications.', 'used', 80000, 'Japan', '1997-TRACK', 'Black', 'Solid', 2, 4, 'FWD', 'Gasoline', 'Hatchback', 190, 'Manual', 777777778, 0);

-- Insert into image table (1 image for every advert)
INSERT INTO image (name, isTitle) VALUES ('../img/cars/AE86.png', 1);
INSERT INTO image (name, isTitle) VALUES ('../img/cars/SkylineR31.png', 1);
INSERT INTO image (name, isTitle) VALUES ('../img/cars/RX7.png', 1);
INSERT INTO image (name, isTitle) VALUES ('../img/cars/NSX.png', 1);
INSERT INTO image (name, isTitle) VALUES ('../img/cars/SilviaS13.png', 1);
INSERT INTO image (name, isTitle) VALUES ('../img/cars/SupraMK4.png', 1);
INSERT INTO image (name, isTitle) VALUES ('../img/cars/3000GT.png', 1);
INSERT INTO image (name, isTitle) VALUES ('../img/cars/ImprezaWRX.png', 1);
INSERT INTO image (name, isTitle) VALUES ('../img/cars/SkylineR33.png', 1);
INSERT INTO image (name, isTitle) VALUES ('../img/cars/CivicEK9.png', 1);

-- Mapping images to adverts
INSERT INTO advertConImage (imageID, advertID) VALUES (1, 1);
INSERT INTO advertConImage (imageID, advertID) VALUES (2, 2);
INSERT INTO advertConImage (imageID, advertID) VALUES (3, 3);
INSERT INTO advertConImage (imageID, advertID) VALUES (4, 4);
INSERT INTO advertConImage (imageID, advertID) VALUES (5, 5);
INSERT INTO advertConImage (imageID, advertID) VALUES (6, 6);
INSERT INTO advertConImage (imageID, advertID) VALUES (7, 7);
INSERT INTO advertConImage (imageID, advertID) VALUES (8, 8);
INSERT INTO advertConImage (imageID, advertID) VALUES (9, 9);
INSERT INTO advertConImage (imageID, advertID) VALUES (10, 10);
INSERT INTO advertConImage (imageID, advertID) VALUES (1, 11);
INSERT INTO advertConImage (imageID, advertID) VALUES (2, 12);
INSERT INTO advertConImage (imageID, advertID) VALUES (3, 13);
INSERT INTO advertConImage (imageID, advertID) VALUES (4, 14);
INSERT INTO advertConImage (imageID, advertID) VALUES (5, 15);
INSERT INTO advertConImage (imageID, advertID) VALUES (6, 16);
INSERT INTO advertConImage (imageID, advertID) VALUES (7, 17);
INSERT INTO advertConImage (imageID, advertID) VALUES (8, 18);
INSERT INTO advertConImage (imageID, advertID) VALUES (9, 19);
INSERT INTO advertConImage (imageID, advertID) VALUES (10, 20);

-- Insert into advertConUser table (relating users to adverts)
INSERT INTO advertConUser (userID, advertID) VALUES (1, 1);
INSERT INTO advertConUser (userID, advertID) VALUES (1, 2);
INSERT INTO advertConUser (userID, advertID) VALUES (2, 3);
INSERT INTO advertConUser (userID, advertID) VALUES (2, 4);
INSERT INTO advertConUser (userID, advertID) VALUES (3, 5);
INSERT INTO advertConUser (userID, advertID) VALUES (3, 6);
INSERT INTO advertConUser (userID, advertID) VALUES (1, 7);
INSERT INTO advertConUser (userID, advertID) VALUES (2, 8);
INSERT INTO advertConUser (userID, advertID) VALUES (3, 9);
INSERT INTO advertConUser (userID, advertID) VALUES (1, 10);
INSERT INTO advertConUser (userID, advertID) VALUES (2, 11);
INSERT INTO advertConUser (userID, advertID) VALUES (3, 12);
INSERT INTO advertConUser (userID, advertID) VALUES (1, 13);
INSERT INTO advertConUser (userID, advertID) VALUES (2, 14);
INSERT INTO advertConUser (userID, advertID) VALUES (3, 15);
INSERT INTO advertConUser (userID, advertID) VALUES (1, 16);
INSERT INTO advertConUser (userID, advertID) VALUES (2, 17);
INSERT INTO advertConUser (userID, advertID) VALUES (3, 18);
INSERT INTO advertConUser (userID, advertID) VALUES (1, 19);
INSERT INTO advertConUser (userID, advertID) VALUES (2, 20);

-- Insert into follow table (optional, users following some adverts)
INSERT INTO follow (userID, advertID) VALUES (1, 1);
INSERT INTO follow (userID, advertID) VALUES (2, 2);
INSERT INTO follow (userID, advertID) VALUES (3, 3);
INSERT INTO follow (userID, advertID) VALUES (1, 4);
INSERT INTO follow (userID, advertID) VALUES (2, 5);
INSERT INTO follow (userID, advertID) VALUES (3, 6);
INSERT INTO follow (userID, advertID) VALUES (1, 7);
INSERT INTO follow (userID, advertID) VALUES (2, 8);
INSERT INTO follow (userID, advertID) VALUES (3, 9);
INSERT INTO follow (userID, advertID) VALUES (1, 10);
