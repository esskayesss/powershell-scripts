# runs the passed commands as admin
function Run-As-Admin {
    param(
       [String]$ArgList
    )
    Write-Host "attempting to run powershell with `"$ArgList`""
    Start-Process powershell -ArgumentList "-Command `" . ${HOME}\${PROFILE}; $ArgList`"" -verb runAs
}