# Neovim
export PATH="$PATH:/opt/nvim-linux64/bin"

# Binaries
export PATH="$PATH:$HOME/.local/opt/"
export PATH="$PATH:$HOME/.local/bin/"

# Local odin
export PATH="$PATH:$HOME/.local/opt/odin/"

# Libraries
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/.local/lib/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/.local/lib64/

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
