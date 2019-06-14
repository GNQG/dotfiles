if ($host.Name -cne 'Windows PowerShell ISE Host') {
    Import-Module DirColors
    Import-Module PSReadLine
    Import-Module oh-my-posh

    Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
    Update-Dircolors $Env:DOTPATH\.dir_colors\dircolors.ansi-dark
    $ThemeSettings.MyThemesLocation = "$PSScriptRoot\Themes"
    Set-Theme MyTheme
}