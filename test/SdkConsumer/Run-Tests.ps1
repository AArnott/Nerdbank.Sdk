Push-Location $PSScriptRoot

.\Set-SdkVersion.ps1
if ($LASTEXITCODE -eq 0) {
	# Set env var so that nuget.config in this directory can resolve the SDK we built locally.
	if (!$env:BUILDCONFIGURATION) { $env:BUILDCONFIGURATION = 'Debug' }

	dotnet build -bl
}

Pop-Location
