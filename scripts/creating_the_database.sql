/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'ArubaDataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'ArubaDataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop and recreate the 'ArubaDataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'ArubaDataWarehouse')
BEGIN
    ALTER DATABASE ArubaDataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE ArubaDataWarehouse;
END;
GO

-- Create the 'ArubaDataWarehouse' database
CREATE DATABASE ArubaDataWarehouse;
GO

USE ArubaDataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
