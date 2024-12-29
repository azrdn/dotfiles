function fish_greeting
    fortune -sn 80 | cowsay -W 45 -f cat
    echo ""
end

if [ "$TERM_PROGRAM" = "vscode" ] || test -n "$NVIM"
    functions -e fish_greeting
end
