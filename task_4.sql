-- task_4.sql
-- This script prints the full description of the 'Books' table
-- from the 'alx_book_store' database using INFORMATION_SCHEMA.

-- Select the alx_book_store database to set the context for the query.
-- Although INFORMATION_SCHEMA queries can specify the schema directly,
-- using USE ensures the correct database is active.
USE alx_book_store;

-- Query the INFORMATION_SCHEMA.COLUMNS table.
-- This table provides metadata about all columns in all databases.
SELECT
    COLUMN_NAME,    -- Retrieves the name of each column.
    COLUMN_TYPE,    -- Retrieves the full data type definition (e.g., 'varchar(130)', 'int', 'double').
    IS_NULLABLE,    -- Indicates if the column can store NULL values ('YES' or 'NO').
    COLUMN_KEY,     -- Shows key information: 'PRI' for Primary Key, 'MUL' for foreign key, 'UNI' for unique key.
    COLUMN_DEFAULT, -- The default value assigned to the column if no value is specified during insertion.
    EXTRA           -- Additional information, such as 'auto_increment' for auto-incrementing columns.
FROM
    INFORMATION_SCHEMA.COLUMNS
WHERE
    TABLE_SCHEMA = 'alx_book_store'  -- Filters results to only show columns from the 'alx_book_store' database.
    AND TABLE_NAME = 'Books';        -- Filters results to only show columns belonging to the 'Books' table.

