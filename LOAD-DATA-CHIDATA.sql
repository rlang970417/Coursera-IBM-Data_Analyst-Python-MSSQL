--
-- Load CSV data into tables. Read the following doc for more advanced usage.
-- REF : https://blog.skyvia.com/3-easy-ways-to-import-csv-file-to-sql-server/
--
USE [CHIDATA]

--
TRUNCATE TABLE [CHIDATA].[dbo].[CHICAGO_CENSUS_DATA];
GO

--
BULK INSERT [CHIDATA].[dbo].[CHICAGO_CENSUS_DATA]
FROM 'E:\DL\Db2Src\ChicagoCensusData-MSSQL.csv'
WITH
(
    FORMAT='CSV',
	FIRSTROW=2
)
GO

--

USE [CHIDATA]

--
TRUNCATE TABLE [CHIDATA].[dbo].[CHICAGO_CRIME_DATA];
GO

--
BULK INSERT [CHIDATA].[dbo].[CHICAGO_CRIME_DATA]
FROM 'E:\DL\Db2Src\ChicagoCrimeData-MSSQL.csv'
WITH
(
    FORMAT='CSV',
	FIRSTROW=2
)
GO


USE [CHIDATA]

--
TRUNCATE TABLE [CHIDATA].[dbo].[CHICAGO_PUBLIC_SCHOOLS];
GO

--
BULK INSERT [CHIDATA].[dbo].[CHICAGO_PUBLIC_SCHOOLS]
FROM 'E:\DL\Db2Src\ChicagoPublicSchools-MSSQL.csv'
WITH
(
    FORMAT='CSV',
	FIRSTROW=2
)
GO