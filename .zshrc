INIT_FILES=($(find $HOME/.zsh-init -name '*.*sh' | tr '\n' ' '))

for FILE in $INIT_FILES; do
	source $FILE
done
