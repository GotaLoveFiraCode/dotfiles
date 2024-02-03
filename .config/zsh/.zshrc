#: Theme “Instant prompt.” {{{
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
	source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# }}}: Theme Instant Prompt

#: Personal Aliases. {{{
alias ls="eza --icons=always"
alias ll="eza --icons -lhF --git"
alias _='sudo'
alias md='mkdir -p'
alias config='/usr/bin/git --git-dir=/home/ltr/.cfg/ --work-tree=/home/ltr'
alias ctags='ctags -R --exclude="target/*" --exclude="git/*"'
alias code='neovide --multigrid'
alias getip='curl --max-time 1.5 --silent https://wtfismyip.com/text'
alias getspeed='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -'
alias addmusdir='mpc add **/*.flac'
# alias ssh_home="ssh ltr@2a01:c23:60c4:f00:55c2:d9fb:7e3:45b0 -t /bin/sh -c 'tmux has-session && exec tmux attach || exec tmux' "
# }}}: Aliases

#: FZF Settings. {{{
export FZF_DEFAULT_OPTS="-m --height ~30% --reverse --border --margin 0,1 --info right --separator = --scrollbar ↓ \
--color=bg+:#313244,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"
# }}}: FZF Settings

#: Source plugins (antidote). {{{
source ${ZDOTDIR:-~}/.antidote/antidote.zsh
antidote load
# }}}: Source plugins

#: Set completion style.
compstyle ohmyzsh

#: Some personal settings. {{{
setopt nomatch
unsetopt autocd notify
bindkey -v
# }}}: ZSH settings

#: ZF find files, C-T {{{
__zfsel() {
	setopt localoptions pipefail 2> /dev/null
	# will add -H when zf gets faster
	command fd -Lt f --min-depth=2 | zf | while read item; do
		echo -n "${(q)item} "
	done
	local ret=$?
	echo
	return $ret
}

zf-file-widget() {
	LBUFFER="${LBUFFER}$(__zfsel)"
	local ret=$?
	zle reset-prompt
	return $ret
}

zle     -N   zf-file-widget
bindkey '^T' zf-file-widget
# }}}: ZF, C-T

#: SK Find Anything, C-N {{{
__sksel() {
	setopt localoptions pipefail 2> /dev/null
	command fd -LH | sk-tmux -m "$@" | while read item; do
		echo -n "${(q)item} "
	done
	local ret=$?
	echo
	return $ret
}

sk-file-widget() {
	LBUFFER="${LBUFFER}$(__sksel)"
	local ret=$?
	zle reset-prompt
	return $ret
}

zle     -N   sk-file-widget
bindkey '^N' sk-file-widget
# }}}: SK, C-N

# if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
	# always add this to ssh command: `-t -- /bin/sh -c 'tmux has-session && exec tmux attach || exec tmux'`
# fi

#: Load zoxide (`t`) defered.
zsh-defer eval "$(zoxide init zsh --cmd t)"

#: ZF Find Directory, C-O {{{
zf-cd-widget() {
	local dir
	dir=$(command fd -Lt d --min-depth=2 | zf) &&
		zoxide add "$dir" && cd "$dir"

	local ret=$?
	zle reset-prompt
	return $ret
}

zle -N zf-cd-widget
bindkey '^O' zf-cd-widget
# }}}: ZF, C-O

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
