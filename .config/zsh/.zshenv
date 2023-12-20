export XDG_DATA_HOME="$HOME/.local/share"

export XDG_CONFIG_HOME="$HOME/.config"

export XDG_STATE_HOME="$HOME/.local/state"

export XDG_CACHE_HOME="$HOME/.cache"

alias svn="svn --config-dir $XDG_CONFIG_HOME/subversion"
alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"

export PATH="$HOME/.local/bin:$HOME/bin:/home/linuxbrew/.linuxbrew/bin:$PATH"
export EDITOR="/home/ltr/.local/bin/nv"
export VISUAL="neovide --multigrid"
export PAGER=bat
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export NB_DIR="$XDG_DATA_HOME/nb"
export NBRC_PATH="$XDG_CONFIG_HOME/nbrc"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export BAT_THEME="catppuccin"

. "$CARGO_HOME/env"

