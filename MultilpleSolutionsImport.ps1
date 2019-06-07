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

Write-Host $solutionListFile,
Write-Host $solutionImportPath,
Write-Host $crmConnectionString,
Write-Host $override,
Write-Host $publishWorkflows,
Write-Host $overwriteUnmanagedCustomizations,
Write-Host $skipProductUpdateDependencies,
Write-Host $convertToManaged,
Write-Host $holdingSolution,
Write-Host $AsyncWaitTimeout,
Write-Host $logsDirectory,
Write-Host $logFilename
