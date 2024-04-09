if status is-interactive
    set -gx XDG_DATA_HOME   "$HOME/.local/share"
    set -gx XDG_CONFIG_HOME "$HOME/.config"
    set -gx XDG_STATE_HOME  "$HOME/.local/state"
    set -gx XDG_CACHE_HOME  "$HOME/.cache"

    set -gx FZF_DEFAULT_OPTS "-m --height ~30% --reverse --border --margin 0,1 --info right --separator = --scrollbar ↓ \
        --color=bg+:#313244,spinner:#f5e0dc,hl:#f38ba8 \
        --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
        --color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

    # set -gx EDITOR "/usr/bin/hx"
    # set -gx VISUAL "/home/ltr/.local/bin/nv"
    # set -gx OPENER "/usr/bin/alacritty -e /home/ltr/.local/bin/nv"
    # set -gx PAGER "/home/linuxbrew/.linuxbrew/bin/moar"

    set -gx MOAR "-style catppuccin-mocha -colors 16M"
    set -gx LC_ALL en_US.UTF-8
    set -gx LANG en_US.UTF-8

    set -gx GTK2_RC_FILES "$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
    set -gx NB_DIR "$XDG_DATA_HOME/nb"
    set -gx NBRC_PATH "$XDG_CONFIG_HOME/nbrc"
    set -gx NODE_REPL_HISTORY "$XDG_DATA_HOME/node_repl_history"
    set -gx RUSTUP_HOME "$XDG_DATA_HOME/rustup"
    set -gx NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME/npm/npmrc"
    set -gx XINITRC "$XDG_CONFIG_HOME/X11/xinitrc"
    set -gx XAUTHORITY "$XDG_RUNTIME_DIR/Xauthority"
    set -gx CARGO_HOME "$XDG_DATA_HOME/cargo"

    set -gx NNN_PLUG 't:autojump;f:fzcd;d:diffs;p:fzplug;w:preview-tui;r:rsynccp;o:xdgdefault;u:dups;c:chksum'
    set -gx NNN_TERMINAL foot
    set -gx NNN_FIFO '/tmp/nnn.fifo'

    abbr --add z "command fd -Lt f --min-depth=2 | zf"

    atuin init fish | source
    zoxide init fish --cmd=t | source
end
