if status is-interactive
    # Commands to run in interactive sessions can go here
    alias ls=lsd
    alias la="lsd -ah"
    alias neofetch=fastfetch

    zoxide init --cmd cd fish | source
end

set -x BUN_INSTALL "$HOME/.bun"
set -x PNPM_HOME "$HOME/.local/share/pnpm"
set -x COWPATH "$HOME/.config/cowsay"

fish_add_path -a "$BUN_INSTALL/bin"
fish_add_path -a "$PNPM_HOME"
fish_add_path -a "$HOME/.local/bin"
