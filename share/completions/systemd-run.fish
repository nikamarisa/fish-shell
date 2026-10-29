complete -c systemd-run -xa "(__fish_complete_subcommand)"
complete -c systemd-run -l help -s h -d "Show help message"
complete -c systemd-run -l version -d "Show package version"
complete -c systemd-run -l no-ask-password -d "Do not prompt for password"
complete -c systemd-run -n "not __fish_seen_argument -l system" -l user -d "Run as user unit"
complete -c systemd-run -n "not __fish_seen_argument -l user" -l system -d "Run as system unit (default)"
complete -c systemd-run -l host -s H -d"Operate on remote host" -xa "(__fish_complete_user_at_hosts)"
complete -c systemd-run -l machine -s M -d "Operate on local container" -xa "(machinectl list --no-ask-password --no-legend --no-pager | string split -f 1 ' ')"
complete -c systemd-run -l capsule -s C -d "Operate on capsule" -xa "(systemctl list-units --type=service --no-pager capsule@\* --no-legend | string split -f 1 '.' | string split -f 2 '@')"
complete -c systemd-run -l scope -d "Run this as scope rather than service" -f
complete -c systemd-run -l unit -s u -d "Run under the specified unit name" -x
complete -c systemd-run -n "not __fish_seen_argument -l scope" -l property -s p -d "Set unit property" -xa "(__systemd_properties service unit)"
complete -c systemd-run -n "__fish_seen_argument -l scope" -l property -s p -d "Set scope unit property" -xa "(__systemd_properties scope)"
complete -c systemd-run -l description -d "Description for unit" -x
complete -c systemd-run -l slice -d "Run in the specified slice" -xa "(__fish_systemd_slices)"
complete -c systemd-run -l slice-inherit -d "Run in the inherited slice."
complete -c systemd-run -l expand-environment -d "Expand environment variables in command arguments" -xa "true false"
complete -c systemd-run -n "not __fish_seen_argument -l wait" -l no-block -d "Return immediatly while unit starts in background"
complete -c systemd-run -l remain-after-exit -s r -d "Leave service around until explicitly stopped"
complete -c systemd-run -n "not __fish_seen_argument -l no-block" -l wait -d "Wait until service stopped again"
complete -c systemd-run -l send-sighup -d "Send SIGHUP when terminating"
complete -c systemd-run -n "not __fish_seen_argument -l scope" -l service-type -d "Service type" -xa "simple exec forking oneshot dbus notify notify-reload idle"
complete -c systemd-run -n "not __fish_seen_argument -l user" -l uid -d "Run as system user" -xa "(__fish_complete_users)"
complete -c systemd-run -n "not __fish_seen_argument -l user" -l gid -d "Run as system group" -xa "(__fish_complete_groups)"
complete -c systemd-run -l nice -d "Nice level" -xa "(seq -20 19)"
complete -c systemd-run -l working-directory -d "Set working directory" -xa "(__fish_complete_directories)"
complete -c systemd-run -l same-dir -s d -d "Inherit working directory from caller"
complete -c systemd-run -l root-directory -d "Set root directory" -xa "(__fish_complete_directories)"
complete -c systemd-run -l same-root-dir -s R -d "Inherit root directory from caller"
complete -c systemd-run -l setenv -s E -d "Set environment" -xa "(env | string replace -r '([^=]+)=(.*)' '\$1\t\$2')"
complete -c systemd-run -l tty
complete -c systemd-run -l pty -s t -d "Run service on pseudo TTY as STDIN/STDOUT/STDERR"
complete -c systemd-run -l pty-late -s T -d "Run service on pseudo TTY, but leave TTY access to agents until unit is started up"
complete -c systemd-run -l pipe -s P -d "Pass STDIN/STDOUT/STDERR directly to service"
complete -c systemd-run -l quiet -s q -d "Suppress additional informational output"
complete -c systemd-run -l verbose -s v -d "Show unit logs while executing operation"
complete -c systemd-run -l output -d "Controls formatting of verbose logs" -xa "(printf %s\t\n (command journalctl --output=help))"
complete -c systemd-run -l json -d "Generate JSON output" -xa "pretty short off"
complete -c systemd-run -l collect -s G -d "Unload the transient unit after it completed"
complete -c systemd-run -l shell -s S -d "Invoke a \$SHELL interactively"
complete -c systemd-run -l ignore-failure -d "Ignore the exit status of the invoked process"
complete -c systemd-run -l background -d "Set ANSI color for background" -x
complete -c systemd-run -l no-pager -d "Do not start a pager"
complete -c systemd-run -n "not __fish_seen_argument -l scope -l pty -s t" -l path-property -d "Set path unit property" -xa "(__systemd_properties path)"
complete -c systemd-run -n "not __fish_seen_argument -l scope -l pty -s t" -l socket-property -d "Set socket unit property" -xa "(__systemd_properties socket)"
complete -c systemd-run -n "not __fish_seen_argument -l scope -l pty -s t" -l on-active -d "Run after SECONDS delay" -x
complete -c systemd-run -n "not __fish_seen_argument -l scope -l pty -s t" -l on-boot -d "Run SECONDS after machine was booted up" -x
complete -c systemd-run -n "not __fish_seen_argument -l scope -l pty -s t" -l on-startup -d "Run SECONDS after systemd was first started" -x
complete -c systemd-run -n "not __fish_seen_argument -l scope -l pty -s t" -l on-unit-active -d "Run SECONDS after the last activation" -x
complete -c systemd-run -n "not __fish_seen_argument -l scope -l pty -s t" -l on-unit-inactive -d "Run SECONDS after the last deactivation" -x
complete -c systemd-run -n "not __fish_seen_argument -l scope -l pty -s t" -l on-calendar -d "Realtime timer" -x
complete -c systemd-run -n "not __fish_seen_argument -l scope -l pty -s t" -l on-timezone-change -d "Run when the timezone changes" -x
complete -c systemd-run -n "not __fish_seen_argument -l scope -l pty -s t" -l on-clock-change -d "Run when the realtime clock jumps" -x
complete -c systemd-run -n "not __fish_seen_argument -l scope -l pty -s t" -l timer-property -d "Set timer unit property" -xa "(__systemd_properties timer)"
complete -c systemd-run -l introspect-cli -d "Show options in UAPI.18 JSON format"
