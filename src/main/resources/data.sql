-- Crear el registro si es que no se duplican datos unicos o se insertan datos nulos
INSERT INTO customer (dni, first_name, last_name, state)
VALUES ('12345678', 'Juan', 'Sanchez', 'A');

-- Registro en la tabla product
INSERT INTO product (product_name, description, price)
VALUES ('Laptop', 'Laptop de última generación con 16GB de RAM', 899.99);

INSERT INTO product (product_name, description, price)
VALUES ('Smartphone', 'Smartphone de última generación con cámara de 48MP y 128GB de almacenamiento', 499.99);

-- Registro en la tabla direc
INSERT INTO direc (customer_id, street, city, state, postal_code, country)
VALUES (@customer_id, 'Avenida Principal 456', 'Lima', 'Lima', '15000', 'Perú');

INSERT INTO direc (customer_id, street, city, state, postal_code, country)
VALUES (@customer_id, 'Avenida Libertad 789', 'Madrid', 'Madrid', '28001', 'España');

-- Registro en la tabla envios

INSERT INTO envios (customer_id, shipping_date, delivery_date, shipping_address, shipping_method, tracking_number, status)
VALUES (@customer_id, '2025-03-28 10:00:00', '2025-03-30 15:00:00', 'Avenida Principal 456, Lima, Perú', 'Envío estándar', 'TRACK12345', 'Entregado');

INSERT INTO envios (customer_id, shipping_date, delivery_date, shipping_address, shipping_method, tracking_number, status)
VALUES (@customer_id, '2025-03-28 11:00:00', '2025-03-29 12:00:00', 'Avenida Libertad 789, Madrid, España', 'Envío exprés', 'TRACK67890', 'Entregado');