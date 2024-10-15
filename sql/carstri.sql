-- 1. Create 'cars' table
CREATE TABLE IF NOT EXISTS cars (
    id SERIAL PRIMARY KEY,
    brand VARCHAR(50) NOT NULL,
    model VARCHAR(100) NOT NULL,
    generation VARCHAR(50),
    nation VARCHAR(50),
    year_of_production INT
);

-- 2. Create 'customers' table
CREATE TABLE IF NOT EXISTS customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    picture TEXT,
    login VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    creation_date DATE NOT NULL DEFAULT CURRENT_DATE
);

-- 3. Create 'salesman' table
CREATE TABLE IF NOT EXISTS salesman (
    id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    rating DECIMAL(2, 1) CHECK (rating >= 0 AND rating <= 5),
    sales_count INT DEFAULT 0,
    FOREIGN KEY (customer_id) REFERENCES customers(id) ON DELETE CASCADE
);

-- 4. Create 'offers' table
CREATE TABLE IF NOT EXISTS offers (
    id SERIAL PRIMARY KEY,
    car_model INT NOT NULL,
    salesman_id INT NOT NULL,
    vin VARCHAR(50) UNIQUE NOT NULL,
    description TEXT,
    horsepower INT CHECK (horsepower > 0),
    modifications TEXT,
    color VARCHAR(30),
    mileage INT CHECK (mileage >= 0),
    price DECIMAL(10, 2) NOT NULL CHECK (price >= 0),
    offer_date DATE NOT NULL DEFAULT CURRENT_DATE,
    type VARCHAR(20) NOT NULL,
    body_type VARCHAR(30),
    img_src TEXT,
    available BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (car_model) REFERENCES cars(id),
    FOREIGN KEY (salesman_id) REFERENCES salesman(id) ON DELETE SET NULL
);

-- 5. Create 'transactions' table
CREATE TABLE IF NOT EXISTS transactions (
    id SERIAL PRIMARY KEY,
    offer_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesman_id INT NOT NULL,
    transaction_date DATE NOT NULL DEFAULT CURRENT_DATE,
    price_sold DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (offer_id) REFERENCES offers(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesman_id) REFERENCES salesman(id)
);

-- 6. Create 'reviews' table
CREATE TABLE IF NOT EXISTS reviews (
    id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    salesman_id INT,
    review_text TEXT,
    rating INT NOT NULL CHECK (rating >= 1 AND rating <= 5),
    review_date DATE NOT NULL DEFAULT CURRENT_DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesman_id) REFERENCES salesman(id)
);

-- 7. Create 'orders' table
CREATE TABLE IF NOT EXISTS orders (
    id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    offer_id INT NOT NULL,
    order_date DATE NOT NULL DEFAULT CURRENT_DATE,
    status VARCHAR(50) NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL CHECK (total_price >= 0),
    payment_method VARCHAR(50) NOT NULL,
    shipping_address TEXT NOT NULL,
    delivery_date DATE,
    salesman_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (offer_id) REFERENCES offers(id),
    FOREIGN KEY (salesman_id) REFERENCES salesman(id)
);

-- Indexes
CREATE INDEX IF NOT EXISTS idx_offers_salesman_id ON offers(salesman_id);
CREATE INDEX IF NOT EXISTS idx_transactions_customer_id ON transactions(customer_id);
CREATE INDEX IF NOT EXISTS idx_orders_customer_id ON orders(customer_id);

-- Inserting data into cars table (use single quotes for string literals in SQL)
INSERT INTO cars (brand, model, generation, nation, year_of_production)
VALUES ('BMW', 'Sa', 'asf', 'sd', 2000);
