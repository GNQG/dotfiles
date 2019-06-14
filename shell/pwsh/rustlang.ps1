Import-Module posh-cargo

# > rustup completion powershell
@('rustup', './rustup', 'rustup.exe', '.\rustup', '.\rustup.exe', './rustup.exe') | ForEach-Object {
    Register-ArgumentCompleter -Native -CommandName $_ -ScriptBlock {
        param($wordToComplete, $commandAst, $cursorPosition)

        $command = '_rustup'
        $commandAst.CommandElements |
            Select-Object -Skip 1 |
            ForEach-Object {
            switch ($_.ToString()) {

                'show' {
                    $command += '_show'
                    break
                }

                'install' {
                    $command += '_install'
                    break
                }

                'update' {
                    $command += '_update'
                    break
                }

                'default' {
                    $command += '_default'
                    break
                }

                'toolchain' {
                    $command += '_toolchain'
                    break
                }

                'list' {
                    $command += '_list'
                    break
                }

                'install' {
                    $command += '_install'
                    break
                }

                'uninstall' {
                    $command += '_uninstall'
                    break
                }

                'link' {
                    $command += '_link'
                    break
                }

                'update' {
                    $command += '_update'
                    break
                }

                'add' {
                    $command += '_add'
                    break
                }

                'remove' {
                    $command += '_remove'
                    break
                }

                'help' {
                    $command += '_help'
                    break
                }

                'target' {
                    $command += '_target'
                    break
                }

                'list' {
                    $command += '_list'
                    break
                }

                'add' {
                    $command += '_add'
                    break
                }

                'remove' {
                    $command += '_remove'
                    break
                }

                'install' {
                    $command += '_install'
                    break
                }

                'uninstall' {
                    $command += '_uninstall'
                    break
                }

                'help' {
                    $command += '_help'
                    break
                }

                'component' {
                    $command += '_component'
                    break
                }

                'list' {
                    $command += '_list'
                    break
                }

                'add' {
                    $command += '_add'
                    break
                }

                'remove' {
                    $command += '_remove'
                    break
                }

                'help' {
                    $command += '_help'
                    break
                }

                'override' {
                    $command += '_override'
                    break
                }

                'list' {
                    $command += '_list'
                    break
                }

                'set' {
                    $command += '_set'
                    break
                }

                'unset' {
                    $command += '_unset'
                    break
                }

                'add' {
                    $command += '_add'
                    break
                }

                'remove' {
                    $command += '_remove'
                    break
                }

                'help' {
                    $command += '_help'
                    break
                }

                'run' {
                    $command += '_run'
                    break
                }

                'which' {
                    $command += '_which'
                    break
                }

                'doc' {
                    $command += '_doc'
                    break
                }

                'man' {
                    $command += '_man'
                    break
                }

                'self' {
                    $command += '_self'
                    break
                }

                'update' {
                    $command += '_update'
                    break
                }

                'uninstall' {
                    $command += '_uninstall'
                    break
                }

                'upgrade-data' {
                    $command += '_upgrade-data'
                    break
                }

                'help' {
                    $command += '_help'
                    break
                }

                'telemetry' {
                    $command += '_telemetry'
                    break
                }

                'enable' {
                    $command += '_enable'
                    break
                }

                'disable' {
                    $command += '_disable'
                    break
                }

                'analyze' {
                    $command += '_analyze'
                    break
                }

                'help' {
                    $command += '_help'
                    break
                }

                'set' {
                    $command += '_set'
                    break
                }

                'default-host' {
                    $command += '_default-host'
                    break
                }

                'help' {
                    $command += '_help'
                    break
                }

                'completions' {
                    $command += '_completions'
                    break
                }

                'help' {
                    $command += '_help'
                    break
                }

            }
        }

        $completions = @()

        switch ($command) {

            '_rustup' {
                $completions = @('show', 'install', 'update', 'default', 'toolchain', 'target', 'component', 'override', 'run', 'which', 'doc', 'man', 'self', 'telemetry', 'set', 'completions', 'help', '-v', '-h', '-V', '--verbose', '--help', '--version')
            }

            '_rustup_show' {
                $completions = @('-h', '-V', '--help', '--version')
            }

            '_rustup_install' {
                $completions = @('-h', '-V', '--help', '--version')
            }

            '_rustup_update' {
                $completions = @('-h', '-V', '--no-self-update', '--help', '--version')
            }

            '_rustup_default' {
                $completions = @('-h', '-V', '--help', '--version')
            }

            '_rustup_toolchain' {
                $completions = @('list', 'install', 'uninstall', 'link', 'update', 'add', 'remove', 'help', '-h', '-V', '--help', '--version')
            }

            '_rustup_toolchain_list' {
                $completions = @('-h', '-V', '--help', '--version')
            }

            '_rustup_toolchain_install' {
                $completions = @('-h', '-V', '--help', '--version')
            }

            '_rustup_toolchain_uninstall' {
                $completions = @('-h', '-V', '--help', '--version')
            }

            '_rustup_toolchain_link' {
                $completions = @('-h', '-V', '--help', '--version')
            }

            '_rustup_toolchain_update' {
                $completions = @('-h', '-V', '--help', '--version')
            }

            '_rustup_toolchain_add' {
                $completions = @('-h', '-V', '--help', '--version')
            }

            '_rustup_toolchain_remove' {
                $completions = @('-h', '-V', '--help', '--version')
            }

            '_rustup_toolchain_help' {
                $completions = @('-h', '-V', '--help', '--version')
            }

            '_rustup_target' {
                $completions = @('list', 'add', 'remove', 'install', 'uninstall', 'help', '-h', '-V', '--help', '--version')
            }

            '_rustup_target_list' {
                $completions = @('-h', '-V', '--toolchain', '--help', '--version')
            }

            '_rustup_target_add' {
                $completions = @('-h', '-V', '--toolchain', '--help', '--version')
            }

            '_rustup_target_remove' {
                $completions = @('-h', '-V', '--toolchain', '--help', '--version')
            }

            '_rustup_target_install' {
                $completions = @('-h', '-V', '--toolchain', '--help', '--version')
            }

            '_rustup_target_uninstall' {
                $completions = @('-h', '-V', '--toolchain', '--help', '--version')
            }

            '_rustup_target_help' {
                $completions = @('-h', '-V', '--help', '--version')
            }

            '_rustup_component' {
                $completions = @('list', 'add', 'remove', 'help', '-h', '-V', '--help', '--version')
            }

            '_rustup_component_list' {
                $completions = @('-h', '-V', '--toolchain', '--help', '--version')
            }

            '_rustup_component_add' {
                $completions = @('-h', '-V', '--toolchain', '--target', '--help', '--version')
            }

            '_rustup_component_remove' {
                $completions = @('-h', '-V', '--toolchain', '--target', '--help', '--version')
            }

            '_rustup_component_help' {
                $completions = @('-h', '-V', '--help', '--version')
            }

            '_rustup_override' {
                $completions = @('list', 'set', 'unset', 'add', 'remove', 'help', '-h', '-V', '--help', '--version')
            }

            '_rustup_override_list' {
                $completions = @('-h', '-V', '--help', '--version')
            }

            '_rustup_override_set' {
                $completions = @('-h', '-V', '--help', '--version')
            }

            '_rustup_override_unset' {
                $completions = @('-h', '-V', '--path', '--nonexistent', '--help', '--version')
            }

            '_rustup_override_add' {
                $completions = @('-h', '-V', '--help', '--version')
            }

            '_rustup_override_remove' {
                $completions = @('-h', '-V', '--path', '--nonexistent', '--help', '--version')
            }

            '_rustup_override_help' {
                $completions = @('-h', '-V', '--help', '--version')
            }

            '_rustup_run' {
                $completions = @('-h', '-V', '--help', '--version')
            }

            '_rustup_which' {
                $completions = @('-h', '-V', '--help', '--version')
            }

            '_rustup_doc' {
                $completions = @('-h', '-V', '--book', '--std', '--help', '--version')
            }

            '_rustup_man' {
                $completions = @('-h', '-V', '--toolchain', '--help', '--version')
            }

            '_rustup_self' {
                $completions = @('update', 'uninstall', 'upgrade-data', 'help', '-h', '-V', '--help', '--version')
            }

            '_rustup_self_update' {
                $completions = @('-h', '-V', '--help', '--version')
            }

            '_rustup_self_uninstall' {
                $completions = @('-y', '-h', '-V', '--help', '--version')
            }

            '_rustup_self_upgrade-data' {
                $completions = @('-h', '-V', '--help', '--version')
            }

            '_rustup_self_help' {
                $completions = @('-h', '-V', '--help', '--version')
            }

            '_rustup_telemetry' {
                $completions = @('enable', 'disable', 'analyze', 'help', '-h', '-V', '--help', '--version')
            }

            '_rustup_telemetry_enable' {
                $completions = @('-h', '-V', '--help', '--version')
            }

            '_rustup_telemetry_disable' {
                $completions = @('-h', '-V', '--help', '--version')
            }

            '_rustup_telemetry_analyze' {
                $completions = @('-h', '-V', '--help', '--version')
            }

            '_rustup_telemetry_help' {
                $completions = @('-h', '-V', '--help', '--version')
            }

            '_rustup_set' {
                $completions = @('default-host', 'help', '-h', '-V', '--help', '--version')
            }

            '_rustup_set_default-host' {
                $completions = @('-h', '-V', '--help', '--version')
            }

            '_rustup_set_help' {
                $completions = @('-h', '-V', '--help', '--version')
            }

            '_rustup_completions' {
                $completions = @('-h', '-V', '--help', '--version')
            }

            '_rustup_help' {
                $completions = @('-h', '-V', '--help', '--version')
            }

        }

        $completions |
            Where-Object { $_ -like "$wordToComplete*" } |
            Sort-Object |
            ForEach-Object { New-Object System.Management.Automation.CompletionResult $_, $_, 'ParameterValue', $_ }
    }
}

Export-ModuleMember TabExpansion