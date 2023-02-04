---------------------------------------------------------------------
-- Script that creates the sample database CHIDATA
--
-- Supported versions of SQL Server: 2005 - 2022
--
-- Based originally on the Coursera "Databases and SQL for Data Science with Python"
-- sample database with changes in data model to support MSSQL
--
-- Last updated: 2023-FEB-03
--
-- © Rob Langnau
---------------------------------------------------------------------

---------------------------------------------------------------------
-- Create empty database CHIDATA
---------------------------------------------------------------------

-- For on-premises SQL Server use the steps in section A

---------------------------------------------------------------------
-- Section A - for on-premises SQL Server only
---------------------------------------------------------------------

-- 1. Connect to your on-premises SQL Server instance, master database

-- 2. Run the following code to create an empty database called CHIDATA
USE master;

-- Drop database
IF DB_ID('CHIDATA') IS NOT NULL DROP DATABASE CHIDATA;

-- If database could not be created due to open connections, abort
IF @@ERROR = 3702 
   RAISERROR('Database cannot be dropped because there are still open connections.', 127, 127) WITH NOWAIT, LOG;

-- Create database
CREATE DATABASE CHIDATA;
GO