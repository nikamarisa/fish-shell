# localization: skip(private)
function __fish_systemd_slices
    systemctl -t slice --no-legend --no-pager --plain | string replace -r '^(\S+)\s+.*' '\1\tSystem'
    systemctl -t slice --user --no-legend --no-pager --plain | string replace -r '^(\S+)\s+.*' '\1\tUser'
end
