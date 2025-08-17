-- task_5.sql
-- This script inserts a single row into the 'Customers' table
-- in the 'alx_book_store' database.

-- Select the alx_book_store database to ensure subsequent commands operate on it.
USE alx_book_store;

-- Insert a single customer record into the Customers table.
-- The column names are explicitly listed, followed by their corresponding values.
INSERT INTO Customers (customer_id, customer_name, email, address) VALUES (1, 'Cole Baidoo', 'cbaidoo@sandtech.com', '123 Happiness Ave.');
