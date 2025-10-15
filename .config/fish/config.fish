if status is-interactive
    # Commands to run in interactive sessions can go here
    alias ls lsd
    alias la "lsd -ah"
    alias neofetch fastfetch
    alias clip wl-copy

    zoxide init --cmd cd fish | source
end

set -x BUN_INSTALL "$HOME/.bun"
set -x PNPM_HOME "$HOME/.local/share/pnpm"
set -x COWPATH "$HOME/.config/cowsay"

fish_add_path -a "$BUN_INSTALL/bin"
fish_add_path -a "$HOME/.local/bin"
fish_add_path -a "$HOME/.local/bin/zig"

# pnpm
set -gx PNPM_HOME "/home/azrd/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# ZVM
set -gx ZVM_INSTALL "$HOME/.zvm/self"
set -gx PATH $PATH "$HOME/.zvm/bin"
set -gx PATH $PATH "$ZVM_INSTALL/"
