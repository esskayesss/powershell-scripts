# relocks an unlocked bitlocker partition
function Lock-Bitlocker-Drive{
    param(
        [String]$Drive
    )
    Write-Host "checking for admin rights..."
    if(Test-Admin-Rights){
        manage-bde -lock $Drive
        if($LASTEXITCODE -ne 0){
            Write-Host "some error occurred.`npress enter to continue"
            read-host
        }
    } else {
        Write-Host "insufficient permissions!"
        Write-Host -NoNewLine "should i launch an admin instance? [Y/n]:"
        $launch = "y"
        if((read-host).ToLower()[0] -eq "n") {
            $launch = "n"
        }
        if($launch -eq "y"){
            Run-As-Admin "Lock-Bitlocker-Drive $Drive;"
        }
    }
}