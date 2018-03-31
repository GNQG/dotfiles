Import-Module posh-git

$git_orig = (Get-Command git)
$hub_orig = (Get-Command hub)

Set-Alias git-orig $git_orig
Set-Alias hub-orig $hub_orig

function git {
    $hubflag = $false
    $index = 0
    while ($index -lt $Args.Length) {
        $arg = $Args[$index].ToString()
        if (!$arg.StartsWith("-")) {
            if ($arg -cin @("alias", "browse", "ci-status", "compare", #
                            "create", "fork", "issue", "pull-request", # Custom commands
                            "release", "selfupdate", "version",        #
                            "am", "apply", "checkout", "cherry-pick",  #
                            "clone", "fetch", "help", "init", "merge", # Expanded commands
                            "push", "remote", "submodule"              #
                            )) {
                $hubflag = $true
            } else {
                $hubflag = $false
            }
            break
        } elseif ($arg -cin @("--help", "--version", "--noop")) {
            $hubflag = $true
            break
        } elseif ($arg -eq "-c") {
                $index += 2
        } else {
                $index += 1
        }
    }
    if ($hubflag -or ($Args.Length -eq 0)) {
        & $hub_orig $Args
    } else {
        & $git_orig $Args
    }
}

Export-ModuleMember -Function git -Alias git-orig,hub-orig