param(
$solutionListFile,
$path
)
        foreach($solution in [System.IO.File]::ReadLines($solutionListFile)){
$solutionFileName +=  "$solution" + ";"
        }

$newlineDelimited = $solutionFileName -replace ';', "%0D%0A"

Write-Host "##vso[task.setvariable variable=SolutionsFileName]$newlineDelimited"

If (Test-Path -Path $path -PathType Container)

    { 
    Write-Host "$path already exists" -ForegroundColor Red
    }

    ELSE
        { 
        New-Item -Path $path  -ItemType directory 
        }
