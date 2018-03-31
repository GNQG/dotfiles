$LocalPSScriptRoot = (Get-Item (Get-Item $PROFILE.CurrentUserAllHosts).Target).DirectoryName

Import-Module "$LocalPSScriptRoot\git.psm1"
Import-Module "$LocalPSScriptRoot\chocolatey.psm1"
Import-Module "$LocalPSScriptRoot\rustlang.psm1"

Import-Module "$LocalPSScriptRoot\ui.psm1"