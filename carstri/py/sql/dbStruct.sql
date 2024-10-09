CREATE TABLE car IF NOT EXISTS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    year INT,
    model VARCHAR(255),
    gen VARCHAR(255),
    doorNum INT,
    seatNum INT,
    drive ENUM('FWD','RWD','AWD'),
    fuel VARCHAR(255),
    body VARCHAR(255)
    horsePow INT,
    gearbox ENUM('Automatic','Manual')
);

CREATE TABLE image IF NOT EXISTS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    isTitle BOOLEAN
);

CREATE TABLE advert(
    id INT AUTO_INCREMENT PRIMARY KEY
    carID INT,
    title VARCHAR(255) NOT NULL,
    price DECIMAL(,2) NOT NULL,
    description VARCHAR(255),
    type ENUM('new','used'),
    milage INT,
    country VARCHAR(255),
    registration VARCHAR(100),
    color VARCHAR(255),
    colorType VARCHAR(255),
    FOREIGN KEY(carID) REFERENCES car(id)
);

CREATE TABLE advertConImage (
    id INT AUTO_INCREMENT PRIMARY KEY,
    imageID INT NOT NULL,
    advertID INT NOT NULL,
    FOREIGN KEY(imageID) REFERENCES image(id),
    FOREIGN KEY(advertID) REFERENCES adevert(id)
);

CREATE TABLE user IF NOT EXISTS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    mail VARCHAR(255) NOT NULL,
    pass VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE advertConUser IF NOT EXISTS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    userID INT NOT NULL,
    advertID INT NOT NULL,
    FOREIGN KEY(userID) REFERENCES user(id),
    FOREIGN KEY(advertID) REFERENCES adevert(id)
);

CREATE TABLE follow IF NOT EXISTS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    userID INT,
    advertID INT,
    FOREIGN KEY(userID) REFERENCES user(id),
    FOREIGN KEY(advertID) REFERENCES advert(id)
);