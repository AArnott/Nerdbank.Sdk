Push-Location $PSScriptRoot

$pkgversion = dotnet nbgv get-version -v nugetpackageversion
if ($LASTEXITCODE -eq 0) {
	$globalJson = Get-Content global.json | ConvertFrom-Json
	$globalJson.'msbuild-sdks'.'Nerdbank.Sdk' = $pkgversion
	$globalJson | ConvertTo-Json -Depth 10 | Set-Content global.json
}

Pop-Location
