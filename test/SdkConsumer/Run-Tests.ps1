Push-Location $PSScriptRoot

$oldBuildConfiguration = $env:BUILDCONFIGURATION
$oldNugetPackages = $env:NUGET_PACKAGES

.\Set-SdkVersion.ps1
if ($LASTEXITCODE -eq 0) {
	# Set env var so that nuget.config in this directory can resolve the SDK we built locally.
	if (!$env:BUILDCONFIGURATION) { $env:BUILDCONFIGURATION = 'Debug' }
	$env:NUGET_PACKAGES="$PSScriptRoot/../../obj/sdktest"
	if (Test-Path $env:NUGET_PACKAGES\Nerdbank.Sdk) { Remove-Item -Recurse $env:NUGET_PACKAGES\Nerdbank.Sdk }

	dotnet build -bl
}

$env:BUILDCONFIGURATION = $oldBuildConfiguration
$env:NUGET_PACKAGES = $oldNugetPackages
Pop-Location
