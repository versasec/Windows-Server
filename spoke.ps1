#DownloadSecurityBaseline
MD c:\temp
Invoke-WebRequest -Uri 'https://download.microsoft.com/download/8/5/C/85C25433-A1B0-4FFA-9429-7E023E7DA8D8/Windows%20Server%202022%20Security%20Baseline.zip' -OutFile 'c:\temp\securitybaseline.zip'
Start-Sleep -Seconds 10
Expand-Archive -Path 'C:\temp\securitybaseline.zip' -DestinationPath 'C:\OSHardening\SecurityBaseline\' -Force


#DownloadLGPO
Invoke-WebRequest -Uri 'https://download.microsoft.com/download/8/5/C/85C25433-A1B0-4FFA-9429-7E023E7DA8D8/LGPO.zip' -OutFile 'c:\temp\lgpo.zip'
Start-Sleep -Seconds 10
Expand-Archive -Path 'C:\temp\lgpo.zip' -DestinationPath 'C:\OSHardening\SecurityBaseline\Windows Server-2022-Security-Baseline-FINAL\Scripts\Tools' -Force
Copy-Item 'C:\OSHardening\SecurityBaseline\Windows Server-2022-Security-Baseline-FINAL\Scripts\Tools\LGPO_30\lgpo.exe' 'C:\OSHardening\SecurityBaseline\Windows Server-2022-Security-Baseline-FINAL\Scripts\Tools\lgpo.exe'
Remove-Item C:\temp -Force -Recurse


#Harddening


$Path='C:\OSHardening\SecurityBaseline\Windows'+' '+'Server-2022-Security-Baseline-FINAL\Scripts\'
cd $path
.\Baseline-LocalInstall.ps1 -WSNonDomainJoined
