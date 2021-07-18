#/usr/bin/env sh
MINPAC_DIR=${XDG_DATA_HOME:-${HOME?Unknown data directory}/.local/share}/nvim/site/pack/minpac/opt/minpac
PACK_DIR=${XDG_DATA_HOME:-${HOME?Unknown pack directory}/.local/share}/nvim/site/pack

while getopts ":dc" opt; do
    case ${opt} in
        d ) read -p "Delete Minpack at $MINPAC_DIR? (y/N) " resp
            case $resp in
                [Yy]* ) rm -rf $MINPAC_DIR ;;
                * ) exit ;;
            esac
            exit ;;
        c ) read -p "Delete package directory at $PACK_DIR? (y/N) " resp
            case $resp in
                [Yy]* ) rm -rf $PACK_DIR ;;
                * ) exit ;;
            esac
            exit ;;
    esac
done

git clone https://github.com/k-takata/minpac.git $MINPAC_DIR
