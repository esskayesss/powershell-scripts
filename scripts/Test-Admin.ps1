# checks for admin privileges
function Test-Admin-Rights {
    $user = [Security.Principal.WindowsIdentity]::GetCurrent();
    $isAdmin = (New-Object Security.Principal.WindowsPrincipal $user).IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
    if($isAdmin){
        Write-Host "this is an admin privileged instance."
    } else {
        Write-Host "this is an unprivileged instance."
    }

    return $isAdmin
}