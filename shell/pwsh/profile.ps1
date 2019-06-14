$profile_core = "$Env:DOTPATH\shell\pwsh\profile-core.ps1"
if (Test-Path $profile_core) {
	. $profile_core
}
