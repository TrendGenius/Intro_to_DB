-- Create the database
-- This command creates a new database named 'alx_book_store'.
-- IF NOT EXISTS prevents an error if the database already exists.
CREATE DATABASE IF NOT EXISTS alx_book_store;

-- Use the newly created database
-- This command tells MySQL to use 'alx_book_store' as the active database for subsequent commands.
USE alx_book_store;

-- Create the Authors table
-- Stores information about authors.
CREATE TABLE IF NOT EXISTS Authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT, -- Unique identifier for the author, automatically increments
    author_name VARCHAR(215) NOT NULL         -- Name of the author, cannot be empty
);

-- Create the Books table
-- Stores information about books available in the bookstore.
CREATE TABLE IF NOT EXISTS Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,    -- Unique identifier for the book, automatically increments
    title VARCHAR(130) NOT NULL,               -- Title of the book, cannot be empty
    author_id INT NOT NULL,                    -- Foreign Key referencing the Authors table
    price DOUBLE NOT NULL,                     -- Price of the book, cannot be empty
    publication_date DATE NOT NULL,            -- Date the book was published, cannot be empty
    -- Define the foreign key constraint
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- Create the Customers table
-- Stores information about customers.
CREATE TABLE IF NOT EXISTS Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT, -- Unique identifier for the customer, automatically increments
    customer_name VARCHAR(215) NOT NULL,        -- Name of the customer, cannot be empty
    email VARCHAR(215) NOT NULL UNIQUE,         -- Email of the customer, must be unique and cannot be empty
    address TEXT                                -- Customer's address, can be long text
);

-- Create the Orders table
-- Stores information about orders placed by customers.
CREATE TABLE IF NOT EXISTS Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,    -- Unique identifier for the order, automatically increments
    customer_id INT NOT NULL,                   -- Foreign Key referencing the Customers table
    order_date DATE NOT NULL,                   -- Date the order was placed, cannot be empty
    -- Define the foreign key constraint
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create the Order_Details table
-- Stores information about the books included in each order.
CREATE TABLE IF NOT EXISTS Order_Details (
    orderdetailid INT PRIMARY KEY AUTO_INCREMENT, -- Unique identifier for the order detail, automatically increments
    order_id INT NOT NULL,                        -- Foreign Key referencing the Orders table
    book_id INT NOT NULL,                         -- Foreign Key referencing the Books table
    quantity DOUBLE NOT NULL,                     -- Quantity of the book in the order, cannot be empty
    -- Define foreign key constraints
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);