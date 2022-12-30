# some properties required by the file
$ScriptDir = "... \WindowsPowerShell\scripts"	# directory for all the functions and variables I intend to use in my profile

# loading sub-files
Get-ChildItem -Path $ScriptDir -Filter *.ps1 | Where-Object { $_.FullName -ne $PSCommandPath } |ForEach-Object {
    . $_.FullName
}

# autoexec
Invoke-Expression (&starship init powershell)