function open_spotify
    if not pgrep -x spotify >/dev/null
        spotify >/dev/null 2>&1 &
    end
end
