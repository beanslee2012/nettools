$OriginalProgressPreference = $Global:ProgressPreference
$Global:ProgressPreference = 'SilentlyContinue'
Write-Host "Testing..."
while ($true) {
  $Test = Test-NetConnection ip -Port port -InformationLevel Quiet  -WarningAction SilentlyContinue
  Start-Sleep -Seconds 60 

}
$Global:ProgressPreference = $OriginalProgressPreference

