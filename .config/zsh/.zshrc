# Lines configured by zsh-newuser-install: {{{
setopt beep extendedglob nomatch
unsetopt autocd notify
bindkey -v
# End of lines configured by zsh-newuser-install. }}}

# The following lines were added by compinstall: {{{

zstyle ':completion:*' auto-description '==> specify: %d'
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' completions 1
zstyle ':completion:*' file-sort modification
zstyle ':completion:*' glob 1
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '+m:{[:lower:]}={[:upper:]}' 'r:|[._-]=** r:|=**' '+m:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' '+'
zstyle ':completion:*' max-errors 3 numeric
zstyle ':completion:*' menu select=long
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' substitute 1
zstyle ':completion:*' verbose true
zstyle ':completion:*' menu select

zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
zstyle ':completion:*:*:*:*:descriptions' format '%F{blue}-- %D %d --%f'
zstyle ':completion:*:*:*:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:*:*:*:warnings' format ' %F{red}-- no matches found --%f'

zstyle :compinstall filename '/home/ltr/.zshrc'

autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION"
# End of lines added by compinstall. }}}

# Lines added by LTR

# Antidote {{{

if [ ! -d "${ZDOTDIR:-~}/.antidote" ]; then
	echo ":: Git needs to be installed"
	command git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote
fi

source ${ZDOTDIR:-~}/.antidote/antidote.zsh
antidote load

# }}}

# Normal settings

export FZF_DEFAULT_OPTS='-m --height ~30% --reverse --border --margin 0,1 --info right --separator = --scrollbar ↓'

# Dynamic depth {{{
lt() {
	if [[ $1 == '--help' ]]; then
		exa --help | grep "level DEPTH"
	elif [[ $1 ]]; then
		exa --icons --tree --level=$1
	elif [[ ! $1 ]]; then
		exa --icons --tree --level=2
	fi
}

lr() {
	if [[ $1 == '--help' ]]; then
		exa --help | grep "level DEPTH"
	elif [[ $1 ]]; then
		exa --icons -lhF --git --level=$1 -R
	elif [[ ! $1 ]]; then
		exa --icons -lhF --git --level=2 -R
	fi
} # }}}

# Aliases {{{
alias v=nvim
alias ls="exa --icons"
alias ll="exa --icons -lhF --git"
alias _=sudo
alias ..="cd .."
alias md="mkdir -p"
alias config='/usr/bin/git --git-dir=/home/ltr/.cfg/ --work-tree=/home/ltr'
alias ctags='ctags -R --exclude="target/*" --exclude="git/*"'
# }}}

# Extra shell apps

# FZF, C-t {{{
if [[ $- == *i* ]]; then

	# CTRL-T - Paste the selected file path(s) into the command line
	__fsel() {
		local cmd="${FZF_CTRL_T_COMMAND:-"command fd -LH --min-depth 1"}"
		setopt localoptions pipefail 2> /dev/null
		eval "$cmd" | FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-40%} --reverse $FZF_DEFAULT_OPTS $FZF_CTRL_T_OPTS" $(__fzfcmd) -m "$@" | while read item; do
			echo -n "${(q)item} "
		done
		local ret=$?
		echo
		return $ret
	}

	__fzf_use_tmux__() {
		[ -n "$TMUX_PANE" ] && [ "${FZF_TMUX:-0}" != 0 ] && [ ${LINES:-40} -gt 15 ]
	}

	__fzfcmd() {
		__fzf_use_tmux__ &&
			echo "fzf-tmux -d${FZF_TMUX_HEIGHT:-40%}" || echo "fzf"
		}

		fzf-file-widget() {
		LBUFFER="${LBUFFER}$(__fsel)"
		local ret=$?
		zle reset-prompt
		return $ret
	}
	zle     -N   fzf-file-widget
	bindkey '^T' fzf-file-widget

fi # }}}

eval "$(zoxide init zsh --cmd t)"

autoload -Uz promptinit && promptinit && prompt pure

# nnn {{{
# n ()
# {
#     # Block nesting of nnn in subshells
#     [ "${NNNLVL:-0}" -eq 0 ] || {
#         echo "nnn is already running"
#         return
#     }

#     # The behaviour is set to cd on quit (nnn checks if NNN_TMPFILE is set)
#     # If NNN_TMPFILE is set to a custom path, it must be exported for nnn to
#     # see. To cd on quit only on ^G, remove the "export" and make sure not to
#     # use a custom path, i.e. set NNN_TMPFILE *exactly* as follows:
#     #      NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
#     export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

#     # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
#     # stty start undef
#     # stty stop undef
#     # stty lwrap undef
#     # stty lnext undef

#     # The command builtin allows one to alias nnn to n, if desired, without
#     # making an infinitely recursive alias
#     command nnn "$@"

#     [ ! -f "$NNN_TMPFILE" ] || {
#         . "$NNN_TMPFILE"
#         rm -f "$NNN_TMPFILE" > /dev/null
#     }
# } }}}
