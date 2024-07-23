$APcomputers = Get-ADComputer -Filter * -SearchBase "OU=Autopilot PCs,OU=MHP,DC=mhp,DC=local"
ForEach ($PC in $APcomputers) {
    if ($PC.NAME -like "MHP*") {
        Move-ADObject -Identity $PC.DistinguishedName -TargetPath "OU=IT Spares,OU=MHP,DC=mhp,DC=local"
    }
}
