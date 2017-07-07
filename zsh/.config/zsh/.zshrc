if [[ -a "/etc/zsh/zshrc" ]]; then
else
	if [[ -a "~/.zshrc.global" ]]; then
		source "~/.zshrc.global"
	else
		curl -Lo ~/.zshrc.global http://git.grml.org/f/grml-etc-core/etc/zsh/zshrc
		source "~/.zshrc.global"
	fi
fi
