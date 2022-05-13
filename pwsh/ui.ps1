if ($host.Name -cne 'Windows PowerShell ISE Host') {
    Import-Module DirColors
    Import-Module PSReadLine

    Set-PSReadlineOption -EditMode Emacs
    Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
    Set-PSReadLineKeyHandler -Key Ctrl+i -Function Complete
    Set-PSReadLineKeyHandler -Key Ctrl+j -Function AcceptLine
    Set-PSReadLineKeyHandler -Key Ctrl+y -Function Paste
    Set-PSReadLineKeyHandler -Key Ctrl+d -Function DeleteChar

    Update-Dircolors $Env:DOTPATH\shared\dircolors\dircolors.ansi-dark
    oh-my-posh init pwsh --config "$PSScriptRoot\Themes\MyTheme.yaml" | Invoke-Expression
}
