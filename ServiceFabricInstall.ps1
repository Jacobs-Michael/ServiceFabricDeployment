$User = <USER>
$PWord = ConvertTo-SecureString -String “<Password>“ -AsPlainText -Force
$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User, $PWord
$source = 'https://download.aquasec.com/windows-enforcer/6.2.0/AquaAgentWindowsInstaller.6.2.21216.msi'
$destination = 'aqua_installer.msi'
Invoke-WebRequest -Uri $source -OutFile $destination -Credential $credential
