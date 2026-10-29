# localization: skip(private)
function __fish_systemd_properties
    argparse 'section=+' -- $argv || return
    # We need to call the main systemd binary (the thing that is run as PID1).
    # Unfortunately, it's usually not in $PATH.
    set -l _systemd_bin $(path filter -f -x {/usr,,/run/current-system/sw}/lib/systemd/systemd)[1] || return

    $_systemd_bin --dump-configuration-items | while read --local --line _property
        if string match -q '[*]' $_property
            set -f _current_section $(string trim -c '[]' $_property | string lower)
        else if ! set -q _flag_section || string match -q '*'$_current_section'*' $_flag_section
            string replace -f = =\t $_property
        end
    end
end
