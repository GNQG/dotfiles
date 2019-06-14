$profile_core = "$Env:DOTFILES_ROOTDIR\shell\pwsh\profile-core.ps1"
if (Test-Path $profile_core) {
	. $profile_core
}
