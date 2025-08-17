-- task_6.sql
-- This script inserts multiple rows into the 'customer' table (lowercase 'c')
-- in the 'alx_book_store' database.

-- Select the alx_book_store database to ensure subsequent commands operate on it.
USE alx_book_store;

-- Insert multiple customer records into the customer table.
-- Each INSERT statement adds a new row with the specified customer details.
INSERT INTO customer (customer_id, customer_name, email, address) VALUES (2, 'Blessing Malik', 'bmalik@sandtech.com', '124 Happiness  Ave.');
INSERT INTO customer (customer_id, customer_name, email, address) VALUES (3, 'Obed Ehoneah', 'eobed@sandtech.com', '125 Happiness  Ave.');
INSERT INTO customer (customer_id, customer_name, email, address) VALUES (4, 'Nehemial Kamolu', 'nkamolu@sandtech.com', '126 Happiness  Ave.');
