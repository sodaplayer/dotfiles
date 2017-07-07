if [[ -a "/etc/zsh/zshrc" ]] &&  grep -q grml /etc/zsh/zshrc; then
else
	GRML_ZSHRC="$ZDOTDIR/.zshrc.global"
	if [[ -a $GRML_ZSHRC ]]; then
		source $GRML_ZSHRC  
	else
		curl -Lo $GRML_ZSHRC http://git.grml.org/f/grml-etc-core/etc/zsh/zshrc
		source $GRML_ZSHRC 	
	fi
fi
