<#
    Script : setup.ps1
	USAGE : ${SCRIPT}
	ARGS : None
	DESC : This script creates an MSSQL database and 
	         loads data from Coursera CSV based data sets.
#>
&sqlcmd -E -S . -i .\DB-CREATE-CHIDATA.sql -b -m 1
&sqlcmd -E -S . -i .\TABLES-CREATE-CHIDATA.sql -b -m 1
&sqlcmd -E -S . -i .\LOAD-DATA-CHIDATA.sql -b -m 1