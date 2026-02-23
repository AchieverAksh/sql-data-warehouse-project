-- ==========================================================================================
-- create database and schemas 
-- ===========================================================================================
-- script purpose: 
--   The script creates a new database named 'datawarehouse' after checking if it already exists.
--   If the database exists, it is dropped and recreated. additionally, the script sets up three schemas within the database:bronze silver gold

--   warning: Running script will drop the entire 'datawarehouse' database if it exists. all data in the database will be permanently deleted. 
--   proceed with caution and ensure you have proper backups before running this script.

use master;
go

  
--drop and recreate the 'datawarehouse' database
if exists (select 1 from sys.databases where name ='datawarehouse')
begin
  alter database datawarehouse set single_user with rollback immediate;
  drop databasebdatawarehouse;
end;
go
  
  -- create database 'DataWarehouse'
create database datawarehouse;

use datawarehouse;

create schema bronze;
go
create schema silver;
go
create schema gold;
GO
