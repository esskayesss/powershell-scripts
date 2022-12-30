# launches an admin instance
function Launch-Admin-Instance {
	Write-Host "launching an admin privileged instance of the windows terminal"
	Start-Process wt -verb runAs
}