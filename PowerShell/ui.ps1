if ($host.Name -cne 'Windows PowerShell ISE Host') {
    Import-Module PSColor
    Import-Module oh-my-posh

    $ThemeSettings.MyThemesLocation = "$PSScriptRoot\Themes"
    Set-Theme MyTheme
}