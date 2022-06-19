Start-Sleep -s 60
#Compare services after restart
$oldServices = Import-Csv -Path "C:\Temp\Service*" | Select-Object name
$services = Get-Service | Where-Object {$_.Status -eq "Running"}| Select-Object name
ForEach ($obj in $oldServices)
{
    $match = $services |Where-Object {$_.name -eq $obj.name}
    if($match){write-host -ForegroundColor Green $obj.name" is up." }
    else {write-host -ForegroundColor Red $obj.name" is not up."}
}
#Show services and attempt to start downed services
$oldServices = Import-Csv -Path "C:\Temp\Service*" | Select-Object name
$services = Get-Service | Where-Object {$_.Status -eq "Running"}| Select-Object name
ForEach ($obj in $oldServices)
{
    $match = $services | Where-Object {$_.name -eq $obj.name}
    if($match){write-host -ForegroundColor Green $obj.name" is up." }
    else {write-host -ForegroundColor Red $obj.name" is not up."; net start $obj.name}
}
#Show only downed services
$oldServices = Import-Csv -Path "C:\Temp\Service*" | Select-Object name
$services = Get-Service | Where-Object {$_.Status -eq "Running"}| Select-Object name
ForEach ($obj in $oldServices)
{
    $match = $services | Where-Object {$_.name -eq $obj.name}
    if($match){}#write-host -ForegroundColor Green $obj.name" is up." }
    else {write-host -ForegroundColor Red $obj.name" is not up."}
}
#Show services and attempt to start downed services
#Compare services after restart
$oldServices = Import-Csv -Path "C:\Temp\Service*" | Select-Object name
$services = Get-Service | Where-Object {$_.Status -eq "Running"}| Select-Object name
ForEach ($obj in $oldServices)
{
    $match = $services |Where-Object {$_.name -eq $obj.name}
    if($match){write-host -ForegroundColor Green $obj.name" is up." }
    else {write-host -ForegroundColor Red $obj.name" is not up."}
}
#Show services and attempt to start downed services
$oldServices = Import-Csv -Path "C:\Temp\Service*" | Select-Object name
$services = Get-Service | Where-Object {$_.Status -eq "Running"}| Select-Object name
ForEach ($obj in $oldServices)
{
    $match = $services | Where-Object {$_.name -eq $obj.name}
    if($match){write-host -ForegroundColor Green $obj.name" is up." }
    else {write-host -ForegroundColor Red $obj.name" is not up."; net start $obj.name}
}
#Show only downed services
$oldServices = Import-Csv -Path "C:\Temp\Service*" | Select-Object name
$services = Get-Service | Where-Object {$_.Status -eq "Running"}| Select-Object name
ForEach ($obj in $oldServices)
{
    $match = $services | Where-Object {$_.name -eq $obj.name}
    if($match){}#write-host -ForegroundColor Green $obj.name" is up." }
    else {write-host -ForegroundColor Red $obj.name" is not up."}
}
#Show services and attempt to start downed services
#Compare services after restart
$oldServices = Import-Csv -Path "C:\Temp\Service*" | Select-Object name
$services = Get-Service | Where-Object {$_.Status -eq "Running"}| Select-Object name
ForEach ($obj in $oldServices)
{
    $match = $services |Where-Object {$_.name -eq $obj.name}
    if($match){write-host -ForegroundColor Green $obj.name" is up." }
    else {write-host -ForegroundColor Red $obj.name" is not up."}
}
#Show services and attempt to start downed services
$oldServices = Import-Csv -Path "C:\Temp\Service*" | Select-Object name
$services = Get-Service | Where-Object {$_.Status -eq "Running"}| Select-Object name
ForEach ($obj in $oldServices)
{
    $match = $services | Where-Object {$_.name -eq $obj.name}
    if($match){write-host -ForegroundColor Green $obj.name" is up." }
    else {write-host -ForegroundColor Red $obj.name" is not up."; net start $obj.name}
}
#Show only downed services
$oldServices = Import-Csv -Path "C:\Temp\Service*" | Select-Object name
$services = Get-Service | Where-Object {$_.Status -eq "Running"}| Select-Object name
ForEach ($obj in $oldServices)
{
    $match = $services | Where-Object {$_.name -eq $obj.name}
    if($match){}#write-host -ForegroundColor Green $obj.name" is up." }
    else {write-host -ForegroundColor Red $obj.name" is not up."}
}
#Show services and attempt to start downed services
#Compare services after restart
$oldServices = Import-Csv -Path "C:\Temp\Service*" | Select-Object name
$services = Get-Service | Where-Object {$_.Status -eq "Running"}| Select-Object name
ForEach ($obj in $oldServices)
{
    $match = $services |Where-Object {$_.name -eq $obj.name}
    if($match){write-host -ForegroundColor Green $obj.name" is up." }
    else {write-host -ForegroundColor Red $obj.name" is not up."}
}
#Show services and attempt to start downed services
$oldServices = Import-Csv -Path "C:\Temp\Service*" | Select-Object name
$services = Get-Service | Where-Object {$_.Status -eq "Running"}| Select-Object name
ForEach ($obj in $oldServices)
{
    $match = $services | Where-Object {$_.name -eq $obj.name}
    if($match){write-host -ForegroundColor Green $obj.name" is up." }
    else {write-host -ForegroundColor Red $obj.name" is not up."; net start $obj.name}
}
#Show only downed services
$oldServices = Import-Csv -Path "C:\Temp\Service*" | Select-Object name
$services = Get-Service | Where-Object {$_.Status -eq "Running"}| Select-Object name
ForEach ($obj in $oldServices)
{
    $match = $services | Where-Object {$_.name -eq $obj.name}
    if($match){}#write-host -ForegroundColor Green $obj.name" is up." }
    else {write-host -ForegroundColor Red $obj.name" is not up."}
}
#Show services and attempt to start downed services
schtasks.exe /delete /f /tn HRT
schtasks.exe /delete /f /tn REB
Remove-Item C:\temp\p1.ps1
#Reboot Start up Completed
