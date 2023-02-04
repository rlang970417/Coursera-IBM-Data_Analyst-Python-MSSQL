# Coursera-IBM-Data_Analyst-Python-MSSQL - MSSQL Setup
A powershell script that creates an MSSQL database and loads the Coursera data sets from the following course:

https://www.coursera.org/learn/sql-data-science?specialization=ibm-data-analyst

Note : This provides a local SQL Server alternative to IBM Db2 Cloud as used in the course.

# User Guide

## 1. Database Setup
Run the script "setup.ps1" against the SQL Server instance on your localhost.

## 2. Optional. Python script test
Run the script "tstsql.py" to verify the data.

## 7. Optional. Schema removal
The previously created schema can be removed by running "dbDestroySchema.ps1" against the target node.