# Usar o prompt Spaceship

# Criar pasta .zsh
mkdir -p $HOME/.zsh

# Baixar o spaceship
if [ ! -d $HOME/.zsh/spaceship ]; then
	git clone --depth=1 https://github.com/spaceship-prompt/spaceship-prompt.git "$HOME/.zsh/spaceship"
fi

# Inicializar o Spaceship

source "$HOME/.zsh/spaceship/spaceship.zsh"

