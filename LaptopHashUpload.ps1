#Install Script
Install-Script -Name Get-WindowsAutopilotInfo

#Upload Hash Into Intune
Get-windowsautopilotinfo -online -AddToGroup "Autopilot Deployments Laptops" -Assign

#Set Execution Policy back to Default
Set-ExecutionPolicy RemoteSigned
