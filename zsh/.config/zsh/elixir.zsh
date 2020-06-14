function asdfinit() {
    if [ -f /opt/asdf-vm/asdf.sh ]; then
        source /opt/asdf-vm/asdf.sh
        fpath=(${ASDF_DIR}/completions $fpath)
        autoload -Uz compinit && compinit
    fi
}
