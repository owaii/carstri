CREATE TABLE IF NOT EXISTS car (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    year INT,
    model VARCHAR(255),
    gen VARCHAR(255),
    doorNum INT,
    seatNum INT,
    drive TEXT CHECK (drive IN ('FWD', 'RWD', 'AWD')),
    fuel VARCHAR(255),
    body VARCHAR(255),
    horsePow INT,
    gearbox TEXT CHECK (gearbox IN ('Automatic', 'Manual'))
);

CREATE TABLE IF NOT EXISTS image (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255),
    isTitle BOOLEAN
);

CREATE TABLE IF NOT EXISTS advert (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    carID INT,
    title VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    description VARCHAR(255),
    type TEXT CHECK (type IN ('new', 'used')),
    milage INT,
    country VARCHAR(255),
    registration VARCHAR(100),
    color VARCHAR(255),
    colorType VARCHAR(255),
    FOREIGN KEY(carID) REFERENCES car(id)
);

CREATE TABLE IF NOT EXISTS advertConImage (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    imageID INT NOT NULL,
    advertID INT NOT NULL,
    FOREIGN KEY(imageID) REFERENCES image(id),
    FOREIGN KEY(advertID) REFERENCES advert(id)
);

CREATE TABLE IF NOT EXISTS user (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    mail VARCHAR(255) NOT NULL,
    pass VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS advertConUser (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    userID INT NOT NULL,
    advertID INT NOT NULL,
    FOREIGN KEY(userID) REFERENCES user(id),
    FOREIGN KEY(advertID) REFERENCES advert(id)
);

CREATE TABLE IF NOT EXISTS follow (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    userID INT,
    advertID INT,
    FOREIGN KEY(userID) REFERENCES user(id),
    FOREIGN KEY(advertID) REFERENCES advert(id)
);
