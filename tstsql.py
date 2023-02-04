#!/usr/bin/env python3
import pymssql

# Set configuration for connection string
myHost = "localhost"
myUser = "sa"
myPass = "SqL_Sup3r_Pa55"
mySchm = "CHIDATA"

# Instantiate connection object and connect to MSSQL database
conn = pymssql.connect(server = myHost, user = myUser, password = myPass, database = mySchm)

# Build query - Prepared Statement
pStmt = "SELECT COUNT(*) FROM [CHIDATA].[dbo].[CHICAGO_CRIME_DATA]"

# Execute query and display result
cur = conn.cursor()
cur.execute(pStmt)
rslt = cur.fetchall()
for [x] in rslt:
    print(x)

conn.close()    # Close connection