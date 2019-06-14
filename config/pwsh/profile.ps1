$profile_core = "$Env:DOTPATH\config\pwsh\profile-core.ps1"
if (Test-Path $profile_core) {
	. $profile_core
}
