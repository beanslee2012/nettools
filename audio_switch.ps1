$Audio = Get-AudioDevice -playback

Write-Output "Audio device was " $Audio.Name
if ($Audio.Name.contains('Realtek'))  {
   Write-Output "Audio device was change to sonar..."  
   (Get-AudioDevice -list | Where-Object Name -EQ 'SteelSeries Sonar - Gaming (SteelSeries Sonar Virtual Audio Device)' | Set-AudioDevice).Name
   (Get-AudioDevice -list | Where-Object Name -EQ 'SteelSeries Sonar - Microphone (SteelSeries Sonar Virtual Audio Device)'|Where-Object Type -EQ 'Recording' | Set-AudioDevice).Name 
}  Else {
   Write-Output "Audio device was change to realtek..."  
   (Get-AudioDevice -list | Where-Object ID -EQ '{0.0.0.00000000}.{c688adc4-cc20-4727-a9cc-9090cfe056e5}'| Set-AudioDevice).Name
   (Get-AudioDevice -list | Where-Object ID -EQ '{0.0.1.00000000}.{01a760b7-7f98-4dd4-b232-4bc92c0a2f22}'| Set-AudioDevice).Name  
 
}

Start-Sleep -s 5 