function fish_greeting
    fortune -sn 80 | cowsay -W 45 -f ~/.config/cat.cow
    echo ""
end
