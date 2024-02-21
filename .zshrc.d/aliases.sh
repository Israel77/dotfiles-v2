alias l="ls --color=auto"
alias ll="ls -l --color=auto"
alias la="ls -a"

if ! command -v oc &>/dev/null; then
	alias oc='kubectl'
fi
