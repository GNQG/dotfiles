$profile_core = "$Env:DOTPATH\shared\config\pwsh\profile-core.ps1"
if (Test-Path $profile_core) {
	. $profile_core
}
