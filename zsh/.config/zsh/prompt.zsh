function desk_prompt () {
    REPLY=${DESK_NAME+${DESK_NAME} }
}

function virtual_env_prompt () {
    REPLY=${VIRTUAL_ENV+${VIRTUAL_ENV:t} }
}

grml_theme_add_token virtual-env -f virtual_env_prompt '%F{cyan}' '%f'
grml_theme_add_token desk -f desk_prompt '%F{yellow}' '%f'

zstyle ':prompt:grml:left:setup' items user at host path percent
zstyle ':prompt:grml:left:items:user' pre '%F{yellow}'
zstyle ':prompt:grml:right:setup' items desk virtual-env vcs rc sad-smiley
