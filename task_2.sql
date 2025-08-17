-- task_2.sql
-- This script creates all the necessary tables for the alx_book_store database.

-- Create the database if it does not exist
-- This ensures the database is available before creating tables.
CREATE DATABASE IF NOT EXISTS alx_book_store;

-- Use the alx_book_store database for subsequent commands
USE alx_book_store;

-- Create the Authors table
-- Stores information about authors. It must be created before Books table
-- because Books table has a foreign key referencing it.
CREATE TABLE IF NOT EXISTS Authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT, -- Unique identifier for the author
    author_name VARCHAR(215) NOT NULL         -- Name of the author
);

-- Create the Customers table
-- Stores information about customers. It must be created before Orders table
-- because Orders table has a foreign key referencing it.
CREATE TABLE IF NOT EXISTS Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT, -- Unique identifier for the customer
    customer_name VARCHAR(215) NOT NULL,        -- Name of the customer
    email VARCHAR(215) NOT NULL UNIQUE,         -- Email of the customer, must be unique
    address TEXT                                -- Customer's address
);

-- Create the Books table
-- Stores information about books. Depends on Authors table.
CREATE TABLE IF NOT EXISTS Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,    -- Unique identifier for the book
    title VARCHAR(130) NOT NULL,               -- Title of the book
    author_id INT NOT NULL,                    -- Foreign Key to Authors table
    price DOUBLE NOT NULL,                     -- Price of the book
    publication_date DATE NOT NULL,            -- Date the book was published
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- Create the Orders table
-- Stores information about orders. Depends on Customers table.
CREATE TABLE IF NOT EXISTS Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,    -- Unique identifier for the order
    customer_id INT NOT NULL,                   -- Foreign Key to Customers table
    order_date DATE NOT NULL,                   -- Date the order was placed
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create the Order_Details table
-- Stores information about books in each order. Depends on Orders and Books tables.
CREATE TABLE IF NOT EXISTS Order_Details (
    orderdetailid INT PRIMARY KEY AUTO_INCREMENT, -- Unique identifier for the order detail entry
    order_id INT NOT NULL,                        -- Foreign Key to Orders table
    book_id INT NOT NULL,                         -- Foreign Key to Books table
    quantity DOUBLE NOT NULL,                     -- Quantity of the book in the order
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

