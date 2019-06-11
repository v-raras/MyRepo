param(
$path,
$solutionListFile,
$solutionImportPath,
$solutionFileName
)
If (Test-Path -Path $path -PathType Container)

    { 
    Write-Host "$path already exists" -ForegroundColor Red
    }

    ELSE
        { 
        New-Item -Path $path  -ItemType directory 
        }

        foreach($solution in [System.IO.File]::ReadLines($solutionListFile)){
$solutionName = "$solution".Trim()
Write-Host $solutionName
        $solutionPath = "$solutionImportPath\$solutionName "

        Copy-Item -Path $solutionPath  -Destination $path
        Write-Host "solution file copied from " $solutionImportPath " to " $path " "
        
        $solutionFileName +=  "$solution" + ";"
        }

If (Test-Path -Path $path -PathType Container)

    { 
    Write-Host "$path already exists" -ForegroundColor Red
    }

$newlineDelimited = $solutionFileName -replace ';', "%0D%0A"

Write-Host "##vso[task.setvariable variable=sauce]$newlineDelimited"
Write-Host $env:sauce
