$isadmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")
$profpath = "$PSScriptRoot\PowerShell\profile.ps1"
$defaultprofpath = $PROFILE.CurrentUserAllHosts

$backup = $false
$createlink = $false

if (Test-Path $defaultprofpath) {
    $defaultprof = (Get-Item $defaultprofpath)
    if (<# 1. is not symlink #>                      `
        ![bool]$defaultprof.Target                   `
        <# 2. points to invalid path #>              `
        -or !(Test-Path $defaultprof.Target)         `
        <# 3. does not points to correct path #>     `
        -or ((Resolve-Path $defaultprof.Target).Path `
                -cne (Resolve-Path $profpath).Path)  `
        ) {
            $backup = $true
            $createlink = $true
    } else {
        # do nothing
    }
} else {
    # profile.ps1 does not exist
    $createlink = $true
}

if ($createlink) {
    if ($isadmin){
        try {
            if ($backup) {
                # back-ups current profile.ps1
                Move-Item -Path $defaultprof -Destination "$defaultprof.bak"        
            }
            $sl = New-Item  -ItemType SymbolicLink `
                            -Path $defaultprofpath `
                            -Value $profpath
            Write-Host "Succeed: created symlink($($sl.FullName) -> $($sl.Target))"
        }
        catch {
            Write-Host "Error: cannot create symlink(backing-up failed)"
        }
    } else {
        Write-Host "Error: cannot create symlink(must be run as an administrator)"
    }
} else {
    Write-Host "Note: no operations required"
}