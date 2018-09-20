#--------------------------------------------
# Declare Global Variables and Functions here 
#--------------------------------------------


#Sample function that provides the location of the script
function Get-ScriptDirectory
{
<#
	.SYNOPSIS
		Get-ScriptDirectory returns the proper location of the script.

	.OUTPUTS
		System.String
	
	.NOTES
		Returns the correct path within a packaged executable.
#>
	[OutputType([string])]
	param ()
	if ($hostinvocation -ne $null)
	{
		Split-Path $hostinvocation.MyCommand.path
	}
	else
	{
		Split-Path $script:MyInvocation.MyCommand.Path
	}
}

#Sample variable that provides the location of the script
[string]$ScriptDirectory = Get-ScriptDirectory

$global_variables = "\\kiewitplaza\ktg\Active\kss\KSS_Toolkit\KSS MultiTool\lib\Global.ps1"
. $global_variables


#--------------------
# importing ticket watch sheet variables
#--------------------
#Start-Process $bin\TW.exe
$importedvariables = Get-IniContent -FilePath $configini
$importedvariables_Duty = Get-IniContent -FilePath $configini_duty
$importedvariables_FS = Get-IniContent -FilePath $fs_configini
$importedvariables_KSSContacts = Get-IniContent -FilePath $KSSContacts_configini
$importedvariables_lunch = Get-IniContent -FilePath $lunch_configini
#$importedvariables_launcher = Get-IniContent -FilePath $launcher_configini

#-----------------------------
## importing password variables
#-----------------------------
$passwordvariables = Get-IniContent -FilePath $passwordini
