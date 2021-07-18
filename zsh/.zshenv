# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
#export HISTFILE="$XDG_CACHE_HOME/zsh/.histfile"

# Enviroment
export VISUAL="nvim"
export EDITOR="nvim"

export PATH="$PATH:$HOME/.bin"

# Go
export GOPATH="$XDG_DATA_HOME/go"

# NPM
PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules

# Desk
export DESK_DIR="$XDG_CONFIG_HOME/desk"

# FZF
if (( $+commands[rg] )); then
    export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'
fi

# uu
export GRADLE_CACHE_DIRECTORY="$HOME/uu/.gradle-cache"
export DOCKER_SECRETS_DIRECTORY="$HOME/uu/secrets"

# Themes
export QT_STYLE_OVERRIDE="kvantum"
export BAT_THEME="gruvbox"


# LFS
export LFS=/home/john/sandbox/lfs
