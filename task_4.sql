-- task_4.sql
-- This script prints the full description of the 'Books' table
-- from the 'alx_book_store' database using INFORMATION_SCHEMA.

-- Select the alx_book_store database to ensure context,
-- although INFORMATION_SCHEMA queries can often specify the schema directly.
USE alx_book_store;

-- Query the INFORMATION_SCHEMA.COLUMNS table to get details about the 'Books' table.
-- This approach is used because DESCRIBE/EXPLAIN are not allowed.
SELECT
    COLUMN_NAME,    -- The name of the column
    COLUMN_TYPE,    -- The data type of the column (e.g., VARCHAR(130), INT, DOUBLE)
    IS_NULLABLE,    -- 'YES' if the column can contain NULL values, 'NO' otherwise
    COLUMN_KEY,     -- 'PRI' for Primary Key, 'MUL' for Foreign Key, 'UNI' for Unique Key
    COLUMN_DEFAULT, -- The default value for the column (NULL if no default)
    EXTRA           -- Any extra information, like 'auto_increment'
FROM
    INFORMATION_SCHEMA.COLUMNS
WHERE
    TABLE_SCHEMA = 'alx_book_store'  -- Specify the database name
    AND TABLE_NAME = 'Books';        -- Specify the table name