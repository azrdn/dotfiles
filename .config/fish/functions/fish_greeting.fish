function fish_greeting
    set -l today (date "+%Y-%m-%d")
    set -l cache_dir
    if set -q XDG_CACHE_HOME
        set cache_dir $XDG_CACHE_HOME
    else
        set cache_dir "$HOME/.cache"
    end

    set -l stamp_file "$cache_dir/fish_greeting_last_shown"

    if test -e $stamp_file
        set -l last (string trim (cat $stamp_file))
        if test "$last" = "$today"
            return
        end
    end

    fortune -sn 80 | cowsay -W 50 -f cat
    echo ""

    command mkdir -p $cache_dir
    printf '%s\n' $today > $stamp_file
end

if [ "$TERM_PROGRAM" = "vscode" ] || test -n "$NVIM"
    functions -e fish_greeting
end
