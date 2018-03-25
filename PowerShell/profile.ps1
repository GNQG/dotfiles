$LocalPSScriptRoot = (Get-Item (Get-Item $PROFILE.CurrentUserAllHosts).Target).DirectoryName

Import-Module "$LocalPSScriptRoot\git.ps1"
Import-Module "$LocalPSScriptRoot\chocolatey.ps1"
Import-Module "$LocalPSScriptRoot\rustlang.ps1"

Import-Module "$LocalPSScriptRoot\ui.ps1"