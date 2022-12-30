# find a file
function Find {
	param(
		[String]$FindRegX,
		[String]$Path="."
	)
	Get-ChildItem -Path $Path -Filter $FindRegX -Recurse -ErrorAction Silent
}