# Usar o prompt Spaceship

# Criar pasta .zsh
mkdir -p $HOME/.zsh

# === Spaceship ===

# # Baixar o spaceship
# if [ ! -d $HOME/.zsh/spaceship ]; then
# 	git clone --depth=1 https://github.com/spaceship-prompt/spaceship-prompt.git "$HOME/.zsh/spaceship"
# fi
#
# # Inicializar o Spaceship
#
# source "$HOME/.zsh/spaceship/spaceship.zsh"

# === Powerlevel10k ===
# Instalar powerlevel10k
#
source ~/.config/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh