-- task_5.sql
-- This script inserts a single row into the 'customer' table (lowercase 'c')
-- in the 'alx_book_store' database, as required by the checker.

-- Select the alx_book_store database to ensure subsequent commands operate on it.
USE alx_book_store;

-- Insert a single customer record into the customer table.
-- The column names are explicitly listed, followed by their corresponding values.
INSERT INTO customer (customer_id, customer_name, email, address) VALUES (1, 'Cole Baidoo', 'cbaidoo@sandtech.com', '123 Happiness Ave.');
