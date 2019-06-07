#
# Filename: ImportSolution.ps1
#
param(
$solutionListFile,
$solutionImportPath,
$crmConnectionString,
$override,
$publishWorkflows,
$overwriteUnmanagedCustomizations,
$skipProductUpdateDependencies,
$convertToManaged,
$holdingSolution,
$AsyncWaitTimeout,
$logsDirectory,
$logFilename
)

$ErrorActionPreference = "Stop"

Write-Verbose 'Entering ImportSolution.ps1'
 
if(-Not (Get-Module -ListAvailable -Name Xrm.Framework.CI.PowerShell.Cmdlets))
{
Import-Module $env:DOWNLOADSECUREFILE1_SECUREFILEPATH
Import-Module $env:DOWNLOADSECUREFILE2_SECUREFILEPATH
Import-Module $env:DOWNLOADSECUREFILE3_SECUREFILEPATH
Import-Module $env:DOWNLOADSECUREFILE4_SECUREFILEPATH
Import-Module $env:DOWNLOADSECUREFILE5_SECUREFILEPATH
Import-Module $env:DOWNLOADSECUREFILE6_SECUREFILEPATH
}


foreach($solution in [System.IO.File]::ReadLines($solutionListFile)){
    Write-Host "Getting " $solution.Trim() " from zip"
    $solutionFile = $solutionImportPath + "\" + $solution.Trim()
    $solutionInfo = Get-XrmSolutionInfoFromZip -SolutionFilePath "$solutionFile"

    Write-Host "Solution Name: " $solutionInfo.UniqueName
    Write-Host "Solution Version: " $solutionInfo.Version

    }
