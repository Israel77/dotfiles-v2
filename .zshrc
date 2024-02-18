INIT_FILES=($(find $HOME/.zshrc.d -name '*.*sh' | tr '\n' ' '))

for FILE in $INIT_FILES; do
	source $FILE
done
