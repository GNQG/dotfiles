if ($host.Name -cne 'Windows PowerShell ISE Host') {
    #Import-Module PSColor
    if (Get-Module -ListAvailable -Name DirColors) {
        Import-Module DirColors
    } else {
        Install-Module DirColors -Scope CurrentUser
        Import-Module DirColors
    }
    Import-Module PSReadLine
    Import-Module oh-my-posh

    Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
    Update-Dircolors ~\dotfiles\.dir_colors\dircolors.ansi-dark
    $ThemeSettings.MyThemesLocation = "$PSScriptRoot\Themes"
    Set-Theme MyTheme
}