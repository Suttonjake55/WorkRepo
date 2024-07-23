#Set Execution Policy
Set-ExecutionPolicy Bypass

#Install Script
Install-Script -Name Get-WindowsAutopilotInfo

#Upload Hash Into Intune
Get-windowsautopilotinfo -online -AddToGroup "Autopilot Deployments Desktops" -Assign

#Set Execution Policy back to Default
Set-ExecutionPolicy RemoteSigned