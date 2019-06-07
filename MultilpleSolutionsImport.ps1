#
# Filename: ImportSolution.ps1
#
param(
$solutionListFile, #= "C:\Users\m-rrastogi\Downloads\Powershell ImportSolution files\solutions.txt", #The absolute path to the Solution.txt file zip to be imported
$solutionImportPath, #= "C:\Users\m-rrastogi\Downloads\Powershell ImportSolution files", #The absolute path to the current directory

#[string]$solutionFile, #The absolute path to the solution file zip to be imported
$crmConnectionString,# = "AuthType=Office365;Username=v-raras@msdyn.onmicrosoft.com;Password=Raja7*kaka;Url=https://msdyn.crm8.dynamics.com",
$override,#, = 1, #If set to 1 will override the solution even if a solution with same version exists
$publishWorkflows,#, = 1, #Will publish workflows during import
$overwriteUnmanagedCustomizations,#, = 1, #Will overwrite unmanaged customizations
$skipProductUpdateDependencies,#, = 1, #Will skip product update dependencies
$convertToManaged, #Direct the system to convert any matching unmanaged customizations into your managed solution. Optional.
$holdingSolution,
$AsyncWaitTimeout, #Optional - Async wait timeout in seconds
$logsDirectory,#, = "C:\Users\m-rrastogi\Downloads\Powershell ImportSolution files\SolutionImportLog", #Optional - will place the import log in here
$logFilename #Optional - will use this as import log file name
)
