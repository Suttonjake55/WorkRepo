$APcomputers = Get-ADComputer -Filter * -SearchBase "OU=Autopilot PCs,OU=,DC=,DC="
ForEach ($PC in $APcomputers) {
    if ($PC.NAME -like "*") {
        Move-ADObject -Identity $PC.DistinguishedName -TargetPath "OU=,OU=,DC=,DC="
    }
}
