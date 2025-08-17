# MySQLServer.py
# This script connects to a MySQL server and creates the 'alx_book_store' database.

import mysql.connector # Import the MySQL connector library

def create_database():
    """
    Connects to MySQL and attempts to create the 'alx_book_store' database.
    Handles connection errors and ensures the database is created if it doesn't exist.
    """
    db_connection = None # Initialize connection variable to None
    try:
        # --- IMPORTANT: Replace with your MySQL server details ---
        # You'll connect as a root user or a user with CREATE DATABASE privileges.
        db_connection = mysql.connector.connect(
            host="localhost", # Usually 'localhost' if MySQL is on your machine
            user="root", # E.g., "root" or another user with permissions
            password="38982168Id." # Your MySQL password
            # Do NOT specify a 'database' here yet, as we are creating it
        )

        # Check if the connection was successful
        if db_connection.is_connected():
            print("Successfully connected to MySQL server.")

            # Create a cursor object to execute SQL commands
            # A cursor allows you to send SQL queries to the database
            cursor = db_connection.cursor()

            # SQL command to create the database if it does not already exist
            # The 'IF NOT EXISTS' clause is crucial as it prevents an error if the DB already exists.
            # This fulfills the "script should not fail if database already exists" requirement.
            create_db_query = "CREATE DATABASE IF NOT EXISTS alx_book_store"

            # Execute the SQL command
            cursor.execute(create_db_query)

            # Print success message as required by the task
            print("Database 'alx_book_store' created successfully!")

    except mysql.connector.Error as err:
        # Handle errors during the connection or database creation process
        # This fulfills the "Print error message to handle errors" requirement.
        print(f"Error: Failed to connect to MySQL or create database: {err}")
    finally:
        # Ensure the connection is closed whether an error occurred or not
        # This fulfills the "handle open and close of the DB" requirement.
        if db_connection and db_connection.is_connected():
            db_connection.close()
            print("MySQL connection closed.")

# Entry point of the script
if __name__ == "__main__":
    create_database()
