<#
    Script : sqlFwRule.ps1
	USAGE : ${SCRIPT}
	ARGS : None
	DESC : Opens TCP port 1433 on the Windows Defender Firewall for MSSQL
#>
# Prep the system for Db2 FireWall rules
New-NetFirewallRule `
    -DisplayName "MSSQL Data Server" `
    -Group "SCOM" `
    -Direction Inbound `
    -Protocol TCP `
    -LocalPort 1433 `
    -Action Allow