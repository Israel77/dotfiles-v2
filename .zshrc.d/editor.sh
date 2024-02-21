# region: Define o editor, em ordem de preferência neovim > vim > vi
if command -v nvim &>/dev/null; then
	export EDITOR="$(command -v nvim) -e"
	export VISUAL=$(command -v nvim)
elif command -v vim &>/dev/null; then
	export EDITOR="$(command -v vim) -e"
	export VISUAL=$(command -v vim)
elif command -v vi &>/dev/null; then
	export EDITOR="$(command -v vi) -e"
	export VISUAL=$(command -v vi)
fi
# endregion
