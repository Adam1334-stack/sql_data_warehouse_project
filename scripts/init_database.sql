/*
============================================================
Create Database and Schemas
============================================================
Script Purpose:
  This script creates a new database named 'DataWarehouse" after checking if it already exists. 
  If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
  within the database: 'bronze', 'silver', and 'gold'.

WARNING:
  Running this script will drop the entire 'DataWarehouse' database if it exisits.
  All data in the database will be permanently deleted. Proceed with caution
  and ensure you havve proper backups before running the script.
*/

-- Create Database 'DataWarehouse'

 USE master; 
GO

  -- Drop and recreate the 'DataWarehouse' database
  IF EXISTS (Select 1 FROM sys.databases WHERE name = 'DataWarehouse')
  BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMEDIATE'
  END;
  GO

CREATE DATABASE DataWarehouse;
GO

 USE DataWarehouse;
GO
  
-- Create Schemas
 CREATE SCHEMA bronze; 
 GO
   
 CREATE SCHEMA silver; 
 GO
   
 CREATE SCHEMA gold; 
 GO
