$ArtifactStagingFolder = & "$PSScriptRoot/../Get-ArtifactsStagingDirectory.ps1"

$SdkTestBinLogPath = "$PSScriptRoot\..\..\test\SdkConsumer\sdkintegrationtest.binlog"
if (Test-Path $SdkTestBinLogPath) {
	if (!(Test-Path $ArtifactStagingFolder/build_logs)) { New-Item -ItemType Directory -Path $ArtifactStagingFolder/build_logs }
	Copy-Item $SdkTestBinLogPath $ArtifactStagingFolder/build_logs
}

if (!(Test-Path $ArtifactStagingFolder/build_logs)) { return }

@{
	"$ArtifactStagingFolder/build_logs" = (Get-ChildItem -Recurse "$ArtifactStagingFolder/build_logs")
}
