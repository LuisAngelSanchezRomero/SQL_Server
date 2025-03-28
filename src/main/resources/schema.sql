-- Crear la tabla
CREATE TABLE customer (
    id INT IDENTITY(1,1) PRIMARY KEY,
    dni CHAR(8) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    state CHAR(1) NOT NULL
);

-- Segunda tabla
CREATE TABLE product (
    id INT IDENTITY(1,1) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    description VARCHAR(255),
    price DECIMAL(10, 2) NOT NULL
);

-- Tercera tabla
CREATE TABLE direc (
    id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT NOT NULL,
    street VARCHAR(255) NOT NULL,
    city VARCHAR(100) NOT NULL,
    state VARCHAR(100) NOT NULL,
    postal_code CHAR(10) NOT NULL,
    country VARCHAR(100) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(id)
);

-- Nueva tabla: Envios 
CREATE TABLE envios (
    id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT NOT NULL,
    shipping_date DATETIME NOT NULL,
    delivery_date DATETIME,
    shipping_address VARCHAR(255) NOT NULL,
    shipping_method VARCHAR(100) NOT NULL,
    tracking_number VARCHAR(100),
    status VARCHAR(50) NOT NULL
);