#/usr/bin/env sh

DIR=$(dirname `readlink -f $0`)

if [ $1 = "-d" ]; then
	read -p "Uninstall Dein at $DIR/dein (y/n)" RESP

	if [ "$RESP" = "y" ]; then
		rm -rf $DIR/dein
	fi
else
	echo Installing to $DIR/dein.

	curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > $DIR/installer.sh
	sh installer.sh $DIR/dein
	nvim  --headless -c 'call dein#install()' -c 'q'

	rm $DIR/installer.sh
fi

